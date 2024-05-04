#!/bin/bash

DATE=$(date)
GOVERSION=$(go version)
VERSION=$(git describe --tags --abbrev=8 --dirty --always --long)

PREFIX=github.com/taylormonacelli/puzzledplanner/version

LDFLAGS=
LDFLAGS="$LDFLAGS -X '$PREFIX.Version=$VERSION'"
LDFLAGS="$LDFLAGS -X '$PREFIX.Date=$DATE'"
LDFLAGS="$LDFLAGS -X '$PREFIX.GoVersion=$GOVERSION'"

go build -ldflags "$LDFLAGS"
