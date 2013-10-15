---
title: Your First Express Route
layout: lesson
pageOrder: 60
---

Now that you have a basic understanding of how routes work, let's add a new one to the application.

- Returning JSON
  - Create a new `exports` called `me`
    - Set the content to `res.send('me');`
  - Create `GET` route for `/me` in the `app`
  - In the route, create an object literal describing yourself
    - Include your `name`, `favorite_color` and `company` you work for (or a client you have)
  - Make `/me` send your new object