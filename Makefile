# run the docpad server in watch mode
run:
	docpad run

# generate the github gh-pages output in a static path
pages:
	docpad generate -e static -o static
