PROGRAM=server
.DEFAULT_GOAL := help

.PHONY: help gqlgen run dlgen test coverage build
help:
	@grep -E '^[a-z0-9A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## compile source to .wasm
	wasm-pack build
