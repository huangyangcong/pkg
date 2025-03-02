# pkg


[![Go Version](https://img.shields.io/github/go-mod/go-version/better-go/pkg?filename=go.mod)](https://github.com/better-go/pkg/blob/master/go.mod)
[![Go Report Card](https://goreportcard.com/badge/github.com/better-go/pkg)](https://goreportcard.com/report/github.com/better-go/pkg)
[![](https://img.shields.io/github/release/better-go/pkg.svg?label=Release)](https://github.com/better-go/pkg/releases)
[![Release Date](https://img.shields.io/github/release-date/better-go/pkg)](https://github.com/better-go/pkg/releases)
[![MIT License](https://img.shields.io/github/license/better-go/pkg)](https://github.com/better-go/pkg/blob/master/LICENSE)
[![Stars](https://img.shields.io/github/stars/better-go/pkg?style=social)](https://img.shields.io/github/stars/better-go/pkg?style=social)


- [x] golang pkg, common utils
- [x] 集成各种常用 lib, 开箱即用



## related:

- https://github.com/better-go/cookiecutter-go
    - `go 微服务`: 项目创建脚手架.

## quickstart:

- install:

```bash

# use latest version:
go get -u -v github.com/better-go/pkg

# use specific tag:
go get -u -v github.com/better-go/pkg@v0.1.18

```

- usage:

```golang

import (
	"github.com/better-go/pkg/random"
)

func Example() {
	// snowflake id:
	userID := random.SnowFlakeID()
	fmt.Printf("userID:%v\n", userID)
}

```


## features:

- [x] `log`: [log/log.go](log/log.go) 集成 `uber.log`, 开箱即用.
- [x] sync/async: `go func()` 优雅异步.
- [x] `retry`: 通用重试wrap: 支持 backoff
- [x] `orm` 集成: `gorm` 扩展
    - mysql 支持
    - 集成 `gorm v1, v2` 版本
- [x] `cache`: 集成 `redis`
- [x] `mq`:
    - [x] kafka: 集成 `kafka`
    - [x] rabbitmq: 集成 `rabbitmq`, 有详细使用示例代码
        - 生产者: [mq/rabbitmq/producer.go](mq/rabbitmq/producer.go)
        - 消费者: [mq/rabbitmq/consumer.go](mq/rabbitmq/consumer.go)
- [x] `net`:
    - [x] http: 集成 `gin` + `auth` API 路由鉴权
    - [x] websocket: 集成 `websocket`, 双向通信, 有详细使用示例代码
        - server: [net/ws/websocket_server.go](net/ws/websocket_server.go)
            - usage: [net/ws/example/ws_server.go](net/ws/example/ws_server.go)
    - [x] socketIO: 类似 `websocket`, 双向通信, 有详细使用示例代码
        - server:
            - usage: [net/ws/example/socket_io/socket_io_server.go](net/ws/example/socket_io/socket_io_server.go)
    - [x] graphql: 集成
        - client: [net/graphql/graphql_client.go](net/graphql/graphql_client.go)
        - server: [net/graphql/graphql_server.go](net/graphql/graphql_server.go)
- [x] `config`:
    - [x] toml 格式配置文件读取
- [x] `random`:
    - [x] `uuid`: ID 生成器
    - [x] `snowflake`: twitter 雪花算法: 18位纯数字(有序+递增+唯一)
- [x] `text`:
    - [x] xss: 预防 xss 校验
- [x] `time`: 大量时间方法扩展
    - 生成时间戳
- [x] [container](container): 扩展数据类型
    - [dict](container/dict/dict.go): 字典数据类型
        - [StringDict](container/dict/string.go): `map[string]string` 扩展, 支持生成 `url encode string`
        - [Dict](): `map[string]interface{}` 扩展
- [x] [convert](convert): 数据格式转换工具
    - [string](convert/string.go): `string to int`, `int to string`
    - [struct](convert/struct.go): `struct` 转换成 `map[string][]string`
    - [map](convert/map.go): `map[string][]string` 转换成 `map[string]string`
- [x] [crypto](crypto)`: 加密/解密工具
    - [x] [signature](crypto/signature/sign.go): 通用签名机制: 生成/验证 - 支持 `md5/sha256/sha512` + `nonce` + `ts`
    - [x] [password](crypto/password.go): 密码: 加密/验证 - 使用 `bcrypt` 算法
- [x] `com`: 第三方企业 API SDK 接入
    - [x] jpush: 极光推送
    - [x] sendcloud: 搜狐短信服务
- [x] [cronjob](cronjob/cron.go): 集成 `cron job` 库, 开箱即用,
    - 使用示例: [cronjob/example/example.go](cronjob/example/example.go)
- [x] `x`: 扩展一些框架
    - [x] `gin`: 扩展代码
        - 路由 wrap: [x/gin/router.go](x/gin/router.go) 自动处理 request args binding 和 response
    - [x] `go-micro`:
    - [x] `go-zero`:
        - [x] 微服务启动器: [x/go-zero/cmd/cmd.go](x/go-zero/cmd/cmd.go)

## wiki:

- https://github.com/better-go/pkg/wiki
- go 编程规范

## development:

- setup:

```bash

# required tool:
brew install go-task/tap/go-task

# this project root folder:
cd pkg/

# init:
task init

# get go pkg:
task tidy

```


## reference:

- uber.log
- 目录结构参考: https://github.com/micro/go-plugins
- 目录风格, 参考 go 标准库, 以及 `x` 库
    - https://pkg.go.dev/search?q=golang.org/x
- https://github.com/golang/text


```bash

go get golang.org/x/text
go get golang.org/x/oauth2
go get golang.org/x/net
go get golang.org/x/crypto

```

## research:

- https://go.libhunt.com/
    - go pkg diff

