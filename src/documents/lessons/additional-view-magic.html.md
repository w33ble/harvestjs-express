---
title: Additional View Magic
layout: lesson
pageOrder: 80
---

In the last lesson, you created a view and used `res.render` to pass information and render that view. `res.render` isn't the only place where you can send information to views though, and may not be the only place you'd want to.

For example, if you wanted to pass the name of your application in to use as the page's title, you would only want to do that once, not with every call to `res.render`.

This sounds like a good exercise, let's do exactly that!

<hr>

Start by opening `views/elements/header.ejs` and locating the `title` tag in the HTML. You'll be replacing the *HarvestJS Example App* text with a reference to title, much like you did in the last lesson in `views/me.ejs`. The variable name is simply `title`.

Now open [http://localhost:3000/me](http://localhost:3000/me) in your browser again.

<hr>

Another error! You should see a *ReferenceError* stating that *title is not defined*. This is because we still haven't set up the `title` variable for our application, so let's do that now.

You'll be using `app.locals` to pass information to all views rendered with express. `app.locals` can be used to pass functions in as well, so it's useful for creating helper functions in your views as well. You can check out the [express docs](http://expressjs.com/api.html#app.locals) on your own for some example of how to use `app.locals` if you're curious.

For this lesson, let's keep it simple and just pass the site title in. Open `app.js` and take note of all the uses of `app.use`. These are used to add *middleware* to express, but we won't dive in to that just yet. For now, just know that this is a decent area in the file to add other application configuration, like the use of `app.locals`.

After the last call to `app.use`, but before the *development only* section, add a line `app.locals.title = 'My HarvestJS App';` and reload the page. Now check the page title and you should see this new setting.

If that worked, that's it, you're done with this course.