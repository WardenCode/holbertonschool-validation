build: ## Generate the production directory "dist"
	@hugo

clean: ## Clean the production directory "dist"
	@rm -rf dist/*

post: ## Create a new post
	@rm -rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md 2>/dev/null || true
	@sed -i 's/^title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint: ## Validate the errors on setup script
	@shellcheck setup.sh

package: ## Create a .zip file that contains the binary of awesome api and dist directory
	 # @zip awesome-website.zip awesome-api dist
	@zip -r awesome-website.zip dist

help: ## Shows the help about how to use this Makefile
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'
