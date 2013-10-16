---
title: Your First View
layout: lesson
pageOrder: 70
---

Now you have a route to pass information about yourself with requests to `/me`, but while passing JSON data is super useful for building an API, you might find presenting this information as HTML more useful, so let's see how that works.

To get you started, I've already created a view for you to use. Download [views.zip](../views.zip), unzip it and replace the existing `views` folder in your project with the one from the zip file. You should now see `index.ejs`, `me.ejs` and an `elements` folder containing `header.ejs` and `footer.ejs`.

You could probably conclude from the filenames, these templates are in `ejs`, a markup language written in and for javascript, by the creator of express no less. You'll find a quick crash course in ejs below. Covering much of ejs is outside the scope of this course, but it's pretty easy to use. We'll move on, but if you care to read further you can check out the [github page](https://github.com/visionmedia/ejs).

<hr>

Before you create a new view to handle the presentation of our information, take a quick look at `views/index.ejs` to see what's going on there.

Notice the use of `<%= title %>` in this template. This is how ejs outputs variables. The `<%= %>` syntax (note the `=`) will cause any information passed in to be HTML escaped. This is useful for preventing cross-site scripting issues, but I digress.

Now If you take a look at `routes/index.js`. You may have noticed a few extra things going on here. Let's run through the important bits.

- It's using `res.render` instead of `res.send`. This is how you tell express to *render* a view, instead telling to simply *send* information. The first parameter of the call to `res.render` is the name of the view, starting from the `views` path, as defined in `app.js` (on or near line 16).
- `res.render` is being given a second parameter as well. This an object literal of the information you want to pass to the template. Here, the object has a key of `title`, which, as you saw, is being used in the view.

<hr>

It's time to update that callback in the `/me` route in `app.js`. Use `res.render` to render the `me` view and pass it the `myself` object.

Once the route is done, open [http://localhost:3000/me](http://localhost:3000/me) in your browser. You should see the view rendered as HTML, but you won't see your information yet since the view isn't using it. Let's fix that!

Open `views/me.ejs` and take a look at what's there. You should notice that it's pretty similar to what was in `views/index.ejs`, only I've changed some of the content. Edit this file to replace *NAME* and *AGE* with the proper keys from the `myself` object that you passed to the view.

Lastly, reload [http://localhost:3000/me](http://localhost:3000/me) in your browser and check out your handwork.

