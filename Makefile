MAIN_NAME=gocker
export GOPROXY=https://goproxy.io,direct
export GO=go

all: help

build: ## build gocker
	${GO} build -o ${MAIN_NAME}

.PHONY: help
help: ## help
	@grep -E '^[ a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
