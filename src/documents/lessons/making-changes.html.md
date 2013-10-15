---
title: Making Changes to the Application
layout: lesson
pageOrder: 40
---

Now that you have your express application running, let's make some changes to it.

Take a look at the `routes/index.js` file and the `exports.index` definition. This is *CommonJS* module syntax. The function being returned is what gets passed in to `app.get`.

We'll dive in to how these routes work later, but for now, change the `title` from *Express* to *My App*, and reload the page in your browser to see the change.

<hr>

Nothing changed. Why is that? Well, node runs your application from memory and doesn't watch for changes to files, so the server that is running stays in the state that it was when it was started.

We'll need to restart node to see our change. To do this, press *control-c* in the terminal that is running node to *break* the application. Now run `node app.js` again and reload the browser, and you should see you change.

<hr>

Breaking the application and restarting node with each change isn't really a workable solution. It would be better if we had an application to watch for changes and restart node for us. Enter `nodemon`.

Use `npm` to install `nodemon` globally using the `-g` flag. Remember to use `sudo` if you're on Linux of Mac and get permission errors.

`npm install -g nodemon`

Now that nodemon is installed, use it to run your application. First, *break* the currently running node process again, then load `app.js` with `nodemon` like so:

`nodemon app.js`

Refresh your browser and see your *My App* change. To verify that nodemon is working as advertised, go back to `routes/index.js` and change *My App* to *HarvestJS*. You should see a message in your terminal that the server restarted, and refreshing your browser will show your change.

That's much nicer, isn't it? Let's move on to the next lesson.