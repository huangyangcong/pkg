package builder

import (
	"fmt"
	"reflect"
)

/*
go-zero sql builder:
	- 参考 builderx.FieldNames() 实现
	- 修复2个问题:
		- 支持 匿名嵌套字段解析
		- 支持 忽略不含 `db: "xxx"` tag 的字段类型

*/

const (
	dbTag = "db"
)

// FieldNames converts golang struct field into slice string
func FieldNames(in interface{}) (out []string) {
	v := reflect.ValueOf(in)

	return nestFieldNames(v) // recursive processor
}

// recursive processor
func nestFieldNames(v reflect.Value) (out []string) {
	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	// we only accept structs
	if v.Kind() != reflect.Struct {
		panic(fmt.Errorf("ToMap only accepts structs; got %T", v))
	}

	typ := v.Type()
	for i := 0; i < v.NumField(); i++ {
		// gets us a StructField
		fi := typ.Field(i)
		ft := fi.Type

		// recursion: 匿名+结构体类型+has tag
		if fi.Anonymous && ft.Kind() == reflect.Struct {
			// recursive processor
			out = append(out, nestFieldNames(v.Field(i))...)
		} else {
			if tagV := fi.Tag.Get(dbTag); tagV != "" {
				out = append(out, fmt.Sprintf("`%s`", tagV))
			} else {
				//out = append(out, fmt.Sprintf(`"%s"`, fi.Name))
			}
		}
	}
	return out
}
