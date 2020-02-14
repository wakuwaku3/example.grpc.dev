# example.grpc.dev

## relational repositories

- <https://github.com/wakuwaku3/example.grpc.proto>
- <https://github.com/wakuwaku3/example.grpc.go.api>
- <https://github.com/wakuwaku3/example.grpc.go.client>
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
docker-compose exec protoc-go npm start
```

- run api

```sh
docker-compose exec api go run ./
```

- run client

```sh
docker-compose exec client go run ./
```

- run web

```sh
docker-compose exec web npm start
```
