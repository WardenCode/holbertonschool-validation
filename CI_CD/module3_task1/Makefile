build: ## Generate the production directory "dist"
	hugo

clean: ## Clean the production directory "dist"
	@rm -rf dist/*

post: ## Create a new post
	@rm -rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md 2>/dev/null || true
	@sed -i 's/^title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint: ## Validate the errors on Makefile script
	@shellcheck setup.sh

help: ## Shows the help about how to use this Makefile
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'
