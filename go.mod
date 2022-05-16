module github.com/better-go/pkg

go 1.13

require (
	github.com/BurntSushi/toml v0.4.1 // indirect
	github.com/ProtonMail/go-crypto v0.0.0-20210920160938-87db9fbc61c7 // indirect
	github.com/Shopify/sarama v1.30.0
	github.com/ambelovsky/go-structs v1.1.0 // indirect
	github.com/ambelovsky/gosf v0.0.0-20201109201340-237aea4d6109
	github.com/ambelovsky/gosf-socketio v0.0.0-20201109193639-add9d32f8b19 // indirect
	github.com/asim/go-micro/plugins/config/encoder/toml/v4 v4.0.0-20220511085541-13b76331ec6f
	github.com/beinan/fastid v0.0.0-20190107221622-c03a08f42c37
	github.com/cpuguy83/go-md2man/v2 v2.0.1 // indirect
	github.com/fatih/structs v1.1.0
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/gin-gonic/gin v1.7.7
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/go-redis/redis/v8 v8.11.4
	github.com/go-sql-driver/mysql v1.6.0
	github.com/gocarina/gocsv v0.0.0-20210516172204-ca9e8a8ddea8
	github.com/gomodule/redigo v2.0.0+incompatible
	github.com/google/go-querystring v1.1.0
	github.com/google/uuid v1.3.0
	github.com/gorilla/websocket v1.4.2
	github.com/jinzhu/gorm v1.9.16
	github.com/jinzhu/now v1.1.2
	github.com/jordan-wright/email v4.0.1-0.20210109023952-943e75fe5223+incompatible
	github.com/kevinburke/ssh_config v1.1.0 // indirect
	github.com/machinebox/graphql v0.2.2
	github.com/matryer/is v1.4.0 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/mattn/go-sqlite3 v2.0.1+incompatible // indirect
	github.com/microcosm-cc/bluemonday v1.0.18
	github.com/opentracing/opentracing-go v1.2.0
	github.com/openzipkin-contrib/zipkin-go-opentracing v0.4.5
	github.com/openzipkin/zipkin-go v0.4.0
	github.com/pkg/errors v0.9.1
	github.com/robfig/cron/v3 v3.0.1
	github.com/rs/xid v1.3.0
	github.com/sergi/go-diff v1.2.0 // indirect
	github.com/shurcooL/graphql v0.0.0-20200928012149-18c5c3165e3a
	github.com/streadway/amqp v1.0.0
	github.com/uber/jaeger-client-go v2.29.1+incompatible
	github.com/urfave/cli/v2 v2.3.0
	github.com/xanzy/ssh-agent v0.3.1 // indirect
	github.com/ylywyn/jpush-api-go-client v0.0.0-20190906031852-8c4466c6e369
	github.com/zeromicro/go-zero v1.3.3
	github.com/zeromicro/go-zero/tools/goctl v1.3.5
	go-micro.dev/v4 v4.6.0
	go.uber.org/zap v1.21.0
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519
	gorm.io/driver/mysql v1.1.2
	gorm.io/gorm v1.21.15
)

replace (
	github.com/codahale/hdrhistogram => github.com/HdrHistogram/hdrhistogram-go v0.9.0
	// github.com/coreos/go-systemd => github.com/coreos/go-systemd/v22 latest
	github.com/coreos/go-systemd => github.com/coreos/go-systemd/v22 v22.2.0
)
