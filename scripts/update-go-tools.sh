#!/bin/bash
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest
go install github.com/valyala/quicktemplate/qtc@latest
go install github.com/swaggo/swag/cmd/swag@v1.16.4

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
	| sh -s -- -b $(go env GOPATH)/bin v1.64.6
golangci-lint version
