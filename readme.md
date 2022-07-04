# example.grpc.dev

gRPC の学習用の開発環境を docker-compose で提供する。
提供する環境は以下の通り

- gRPC のインターフェース定義用環境
- Go で書かれた API
- Go で書かれた Client
- Ruby で書かれた Client
- HTTP リクエストと gRPC リクエストを返還するためのプロキシ
- Typescript + React で書かれた Web アプリ

## usage

### 環境変数を設定

- GITHUB_USER_NAME
- GITHUB_EMAIL
- GITHUB_TOKEN

### コマンドを実行

- up

```sh
docker-compose up --build -d
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
docker-compose exec web make serve
```
