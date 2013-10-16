---
title: Intro to Middleware
layout: lesson
pageOrder: 90
hidden: true
---

Middleware is a simple, but powerful concept. Middleware is simply a way to add extra handling to requests in your application. Middleware is useful for handling authentication and authorization, sessions and modifications to request data among a whole host of other things.

Middleware works because express executes in sequence, which also means that the order in which you include your middleware is important. For example, if you are using middleware for handling logins and authentication, you'll want to put it after the body parser, which makes the `POST` body from form submissions available as an object in express, otherwise you won't be able to easily parse that information.

Express somes with a number of useful middleware methods out of the box, and you can find out more about them [in the docs](http://expressjs.com/api.html#middleware).

<hr>

The callback syntax of middleware is very similar to the format we saw in the router. Here's the router callback syntax again:

`function(req, res) {}`

And here's the middleware callback syntax:

`function(req, res, next) {}`

The only difference is the inclusion of the `next` argument. This argument is a function that is called to to allow processing to be passed on the to the next matching handler. What does that look like? Say we have the following:

````
app.use(function(req, res, next) {
  if (req.params.token) {
    ....
  }
});
````