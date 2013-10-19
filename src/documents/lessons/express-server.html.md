---
title: Your First Express Server
layout: lesson
pageOrder: 30
---

In the previous lesson, you created a new express application. Now it's time to load that application and see what you've got.

Node has its own web server built in, and express uses it to run your application. To do this, we'll use `node` on the command line, telling it load `app.js`. This happens as you might expect, by entering the following in your terminal from the root of the project:

`node app.js`

<hr>

You got an error? Well, that's no good. So why did this happen? Well, this application has some dependencies on third party libraries, referred to as *modules* in the node world, and you still haven't installed them. These modules are defined in `package.json`.

The `package.json` file uses JSON, or *Javascript Object Notation*, data structure, which is essentially a key-value structure. Take a look at that file to see what I mean. Note the `dependencies` key, and the modules defined there.

But wait, didn't we already install express? Why isn't that dependency met? We did install express before, but we installed it globally with the `-g` flag, which will expose the command line tool, but not the web application component. We need to install it locally for this project, which is what the `package.json` file helps us do.

Let's install those modules. To do that, we'll use `npm`, the *Node Package Manager*. Since our modules are defined in `package.json`, we simply run `npm install` and it'll do the rest automatically.

<hr>

Now that you have those modules installed, try launching the application again. This time you should get a message that reads **Express server listening on port 3000**.

Great, your application is running! Open a browser and load [http://localhost:3000](http://localhost:3000) to check it out, then move on to the next lesson.