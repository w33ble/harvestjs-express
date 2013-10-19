---
title: Express Routes Explained
layout: lesson
pageOrder: 50
---

In the last lesson, I had you open `routes/index.js` and make changes there to affect the rendered output. But how did I know that was the file to change? In order to understand that, let's chat HTTP requests briefly.

Express uses HTTP verbs for routes and supports `GET`, `POST`, `PUT` and `DELETE` out of the box for reading, which in the RESTful world are used for reading, creating, updating and removing assets. These routes are defined using `app.get`, `app.post`, `app.put` and `app.delete`.

`GET` and `POST` requests should be familiar to you if you've worked with form data on webpages in the past. The other two are also important for modifying information on the server via RESTful calls, as you'll learn in the next course.

It's important to know that standard requests are `GET`, so using `app.get` is appropriate for now.

<hr>

With that brief introduction out of the way, open `app.js` in your editor and check out the following code, which should be at or near line 32:

`app.get('/', routes.index);`

This is defining a `GET` route for /, the base of the application, which is the page you get when you load [http://localhost:3000](http://localhost:3000).

What about the `routes.index` part? That's coming from the included routes, which happens on or near line 7:

`routes = require('./routes')`.

Node's `require` command, when given a directory, will try to load `index.js` by default, which is what is happening here, and why it's loading `routes/index.js` without us needing to explicitly tell it to to load the index file.

<hr>

What about the line below the index route, `app.get('/users', user.list);`? This is defining another route, `/users`, which you can access at [http://localhost:3000/users](http://localhost:3000/users).

Using what you just read above, can you figure out where the code for that route lives?

Hopefully you answered `routes/user.js`. Open that file and notice that this response is a little bit different, using `req.send` instead of `res.render`. If you loaded the above URL in your browser, you may have noticed it doesn't have any HTML, it's just plain text. We'll touch more on that in the following lessons.

That's express routes in a nutshell. In the next lesson, we'll create our own route and use it to request some information from the server.
