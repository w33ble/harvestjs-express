---
title: Making Changes to the Application
layout: lesson
pageOrder: 40
---

Now that you have your express application running, let's make some changes to it.

Take a look at the `routes/index.js` file. In that file, note the`exports.index` definition. This is *CommonJS* module syntax. The function being returned is what gets passed in to `app.get` in the `app.js` file.

We'll dive in to how these routes work later, but for now, change the `title` from *Express* to *My App*, and load [http://localhost:3000](http://localhost:3000) in your browser to see the change.

<hr>

Hrm, nothing changed. Why is that? Well, node runs your application from memory and doesn't watch for changes to files, so the server that is running stays in the state that it was when it was started.

We'll need to restart node to see our change. To do this, press *control-c* in the terminal that is running node to *break* the application. Now run `node app.js` again and reload the browser, and you should see you change.

<hr>

Breaking the application and restarting node with each change isn't really a workable solution. It would be better if we had an application to watch for changes and restart node for us. Enter `nodemon`.

Stop node with *control-c* again and use `npm` to install `nodemon` globally using the `-g` flag. Remember to use `sudo` if you're on Linux or Mac and get permission errors.

`npm install -g nodemon`

Now that nodemon is installed, use it to run your application. First, *break* the currently running node process again, then load `app.js` with `nodemon` like so:

`nodemon app.js`

Now refresh your browser and see your *My App* version again.

To verify that nodemon is working as advertised, go back to `routes/index.js` and change *My App* to *HarvestJS*. You should see a message in your terminal that the server restarted, and refreshing your browser will show your change.

That's much nicer, isn't it? Let's move on to the next lesson.