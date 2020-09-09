#!/bin/bash
export GO111MODULE=on
go get golang.org/x/tools/gopls@latest
go get golang.org/x/tools/cmd/goimports@latest
go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.30.0
#go get github.com/kyleconroy/sqlc/cmd/sqlc@v1.3.0
#go get github.com/markbates/pkger/cmd/pkger@v0.17.0
