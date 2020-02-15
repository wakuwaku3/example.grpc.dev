# example.grpc.dev

gRPC の学習用の開発環境を docker-compose で提供する。
提供する環境は以下の通り

- gRPC のインターフェース定義用環境
- Go で書かれた API
- Go で書かれた Client
- Ruby で書かれた Client
- HTTP リクエストと gRPC リクエストを返還するためのプロキシ
- Typescript + React で書かれた Web アプリ

## relational repositories

- <https://github.com/wakuwaku3/example.grpc.proto>
- <https://github.com/wakuwaku3/example.grpc.go.api>
- <https://github.com/wakuwaku3/example.grpc.go.client>
- <https://github.com/wakuwaku3/example.grpc.ruby.client>
- <https://github.com/wakuwaku3/example.grpc.web>

## usage

- up

```sh
docker-compose up
```

- down

```sh
docker-compose down
```

- build

```sh
docker-compose up --build
```

- start

```sh
docker-compose start
```

- stop

```sh
docker-compose stop
```

- view document

```sh
docker-compose exec proto npm start
```

- run api

```sh
docker-compose exec api go run ./
```

- run client-go

```sh
docker-compose exec client-go go run ./
```

- run client-ruby

```sh
docker-compose exec client-ruby bundle exec ruby main.rb
```

- run web

```sh
docker-compose exec web npm start
```
