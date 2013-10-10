# harvestjs-express

## Install

You'll need node, as well as bower and docpad installed globally. Once that's done, run the following:

````
npm install
bower install
docpad run
````

## Outline

- Install `express` globally on your system
  - Consult the [express.js docs](http://expressjs.com/guide.html#executable)
- Create new express project called `harvest`
  - Start project with `ejs`, `sessions` and `css` support
  - Take a look at `app.js` for an overview of how `express` works
- Server
  - Use the `node` command to load the `app.js` file
  - Open [http://localhost:3000](http://localhost:3000) in your browser
  - Change the output in `routes/index.js` to reload the page
    - What happened? Node has to be restarted with all server-side changes
- Better setup for development
  - Install `nodemon` globally on your system
  - Use `nodemon` instead of `node` to launch `app.js`
  - Open [http://localhost:3000](http://localhost:3000) in your browser
  - Change the output in `routes/index.js`
    - Check the terminal to watch restart
    - Reload the page to check the new output
- Returning JSON
  - Create a new `exports` called `me`
    - Set the content to `res.send('me');`
  - Create `GET` route for `/me` in the `app`
  - In the route, create an object literal describing yourself
    - Include your `name`, `favorite_color` and `company` you work for (or a client you have)
  - Make `/me` send your new object
- Render views
  - Download `views.zip` and replace `views/index.ejs`
  - Create new view at `views/me.ejs`
  - In `me.ejs`, inject data from your object literal into the unordered list
