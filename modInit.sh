#!/bin/bash

go mod init

# The -replace=old[@v]=new[@v] flag adds a replacement of the given module path and version pair

go mod edit -replace github.com/antlr/antlr4/runtime/Go/antlr@v0=`pwd`/antlr4/runtime
go mod edit -require github.com/antlr/antlr4/runtime/Go/antlr@4.9.3
go mod tidy

## Auto-Generate code from all g4 files

echo "Generate vode ..."
go generate ./...

# Get GoLang packages
#go get -v -t ./...

#go build
#go install

