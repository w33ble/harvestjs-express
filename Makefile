# run the docpad server in watch mode
GHPAGES = docpad generate -e static -o static

run:
	docpad run

# generate the github gh-pages output in a static path
pages:
	$(GHPAGES)

# generate the gh-pages, launch via grunt-connect for local preview
preview:
	$(GHPAGES)
	grunt
