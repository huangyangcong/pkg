package conf

import (
	"github.com/better-go/pkg/log"

	"github.com/asim/go-micro/plugins/config/encoder/toml/v4"
	"go-micro.dev/v4/config"
	"go-micro.dev/v4/config/reader"
	"go-micro.dev/v4/config/source"
	"go-micro.dev/v4/config/source/file"
)

var (
	tomlFile    = "configs.toml"
	tomlEncoder = toml.NewEncoder()
	tomlConfig  config.Config
)

func TomlInit(filename string) error {
	if filename != "" {
		tomlFile = filename
	}

	cfg, err := config.NewConfig(
		config.WithSource(
			file.NewSource(
				file.WithPath(tomlFile),
				source.WithEncoder(tomlEncoder),
			)))
	if err != nil {
		log.Errorf("toml config parse error, file=%v, err=%v", tomlFile, err)
		return err

	}

	// global config object:
	tomlConfig = cfg
	return nil
}

func TomlGet(key ...string) reader.Value {
	return tomlConfig.Get(key...)
}

func TomlScan(dst interface{}, src ...string) error {
	log.Debugf("toml config map: %+v", tomlConfig.Map())

	// fix scan all:
	if len(src) == 1 && src[0] == "" {
		return tomlConfig.Scan(&dst)
	}

	return tomlConfig.Get(src...).Scan(&dst)
}

func TomlMap() map[string]interface{} {
	return tomlConfig.Map()
}
