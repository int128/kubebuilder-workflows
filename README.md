# kubebuilder-workflows [![test](https://github.com/int128/kubebuilder-workflows/actions/workflows/test.yaml/badge.svg)](https://github.com/int128/kubebuilder-workflows/actions/workflows/test.yaml)

This provides the reusable workflows for a Kubebuilder project.

## Getting Started

```yaml
name: go

on:
  pull_request:
    paths:
      - .github/workflows/go.yaml
      - go.*
      - '**/*.go'
      - Makefile
  push:
    branches:
      - main
    paths:
      - .github/workflows/go.yaml
      - go.*
      - '**/*.go'
      - Makefile

jobs:
  go:
    uses: int128/kubebuilder-workflows/.github/workflows/go.yaml@v1
    with:
      go-version: 1.20.3
      golangci-lint-version: v1.52.2
```

```yaml
name: manifest

on:
  pull_request:
    paths:
      - config/**
      - .github/workflows/manifest.yaml

jobs:
  manifest:
    uses: int128/kubebuilder-workflows/.github/workflows/manifest.yaml@v1
```
