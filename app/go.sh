#!/usr/bin/env bash
go build main.go
GOOS=windows GOARCH=amd64 go build main.go