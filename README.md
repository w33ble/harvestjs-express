# harvestjs-express

Visit [http://w33ble.github.io/harvestjs-express/](http://w33ble.github.io/harvestjs-express/) to view this course

## Install

You'll need node, as well as bower and docpad installed globally. Once that's done, run the following:

````
npm install
bower install
````

## Usage

This makes use of some Makefile shortcuts. You don't have to use them if you don't want, but here they are:

- `make run` is a shortcut for `docpad run`.
- `make pages` will create a static build of the site and save it to the `static` path. Meant for deploy to gh-pages, or any static hosting option.
- `make preview` will create the static site and launch a local preview at [localhost:4000](http://localhost:4000).