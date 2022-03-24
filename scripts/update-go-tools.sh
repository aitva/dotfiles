#!/bin/bash
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/kyleconroy/sqlc/cmd/sqlc@v1.10.0
go install github.com/valyala/quicktemplate/qtc@latest

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
	| sh -s -- -b $(go env GOPATH)/bin v1.45.0
golangci-lint --version
