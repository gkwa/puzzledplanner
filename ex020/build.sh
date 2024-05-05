#!/bin/bash

DATE=$(date)
GOVERSION=$(go version)
VERSION=$(git describe --tags --abbrev=8 --dirty --always --long)
SHORT_SHA=$(git rev-parse --short HEAD)
FULL_SHA=$(git rev-parse HEAD)

PREFIX=github.com/taylormonacelli/puzzledplanner/version

LDFLAGS=
LDFLAGS="$LDFLAGS -X '$PREFIX.Version=$VERSION'"
LDFLAGS="$LDFLAGS -X '$PREFIX.Date=$DATE'"
LDFLAGS="$LDFLAGS -X '$PREFIX.GoVersion=$GOVERSION'"
LDFLAGS="$LDFLAGS -X '$PREFIX.ShortGitSHA=$SHORT_SHA'"
LDFLAGS="$LDFLAGS -X '$PREFIX.FullGitSHA=$FULL_SHA'"

go build -ldflags "$LDFLAGS"
