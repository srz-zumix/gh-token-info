EXTENSION_NAME=token-infor

help: ## Display this help screen
	@grep -E '^[a-zA-Z][a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sed -e 's/^GNUmakefile://' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## install gh extention
	gh extension remove "srz-zumix/gh-${EXTENSION_NAME}" || :
	gh extension remove "${EXTENSION_NAME}" || :
	gh extension install .


install-released:
	gh extension remove "${EXTENSION_NAME}" || :
	gh extension install "srz-zumix/gh-${EXTENSION_NAME}"

clean:
