.PHONY: help

help: ## Display this help screen
	@grep -E '^[a-z.A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

submodule-update: ## updates submodules for themes
	git submodule update --init --recursive

run: submodule-update ## run as a dev server
	hugo serve -w $(PARAMS)

run-codespaces: submodule-update
	hugo serve -w -b https://${CODESPACE_NAME}-1313.preview.app.github.dev/ --appendPort=false