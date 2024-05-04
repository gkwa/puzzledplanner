#!/bin/bash

go mod tidy

git init
git add -A
git tag -a v0.0.1 -m 'Initial commit'
git describe >git-describe.txt
go build
