# https://github.com/int128/kubebuilder-updates/blob/main/Makefile

# Setting SHELL to bash allows bash commands to be executed by recipes.
# Options are set to exit when a recipe line exits non-zero or a piped command fails.
SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

.PHONY: all
all: build

.PHONY: build
build: manifests generate fmt vet

.PHONY: manifests
manifests:

.PHONY: generate
generate:

.PHONY: fmt
fmt:
	go fmt ./...

.PHONY: vet
vet:
	go vet ./...

.PHONY: test
test:
	go test ./...
