#!/bin/bash
export GO111MODULE=on
go get golang.org/x/tools/gopls@latest
go get golang.org/x/tools/cmd/goimports@latest
go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.22.2
