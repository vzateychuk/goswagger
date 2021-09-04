# goswagger
Generate server/client code by using swagger specification

## Run goswagger Docker image (command swagger.bat file)
```shell
docker run -it --rm --name swagger --env GOPATH=/go -v %GOPATH%/src:/go/src -w /go/src quay.io/goswagger/swagger %*
```
## Build simple swagger.yaml
```shell
swagger.bat init spec --title "A Todo list application" --description "From the todo list tutorial on goswagger.io" --version 1.0.0 --scheme http --consumes application/io.goswagger.examples.todo-list.v1+json --produces application/io.goswagger.examples.todo-list.v1+json
```
The swagger.yaml will be generaged at %GOPATH%/src directory.

## Validate swagger.yaml
```shell
swagger.bat validate /go/src/swagger.yml
```

## Generage server
```shell
swagger.bat generate server -A todo-list -f ./swagger.yaml
```

## Links:
[To-Do list tutorial on go-swagger](https://goswagger.io/tutorial/todo-list.html)