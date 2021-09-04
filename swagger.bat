@echo off
echo.
docker run -it --rm --name swagger --env GOPATH=/go -v %GOPATH%/src:/go/src -w /go/src quay.io/goswagger/swagger %*
