#!/bin/bash
apt-get update && apt-get install -y hugo make shellcheck nodejs
npm install -g markdownlint-cli
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "$(go env GOPATH)/bin" v1.50.1

