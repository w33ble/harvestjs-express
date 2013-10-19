---
title: Your First Express Route
layout: lesson
pageOrder: 60
---

Now that you have a basic understanding of how routes work, let's add a new one to the application.

Add a route to handle `GET` requests to `/me` in `app.js`. Don't worry about including a new route file just yet, we'll just use the typical express callback, `function(req, res) {}`. This function will get passed the request object, `req`, and provided with a reference to express' response object, `res`.

In the callback for the `/me` route, add `res.send('me');`. Much like we saw in the `/user` route handler, this will simply output the string in the browser. Visit [http://localhost:3000/me](http://localhost:3000/me) to confirm that it's working.

<hr>

Sending strings is all well and good, but it's not all that practical. Let's instead have it output some JSON data about yourself.

Express has the ability to sense the type of the data being sent to the browser and encode it correctly. What this means is that we can pass an object literal to `res.send` and express will send the JSON string to the browser, along with a header saying that the payload is JSON data.

Make an object literal inside the callback describing yourself, including your `name`, `age` in years and anything else you care to include and save it to a variable called `myself`. An example might look like this:

````
var myself = {
  name: 'Node JS',
  age: '4',
  occupation: 'scalable web apps'
};
````

Now, use `res.send` to send `myself` and refresh the page in the browser and you should see the JSON data.

<hr>

The response header will include `Content-Type:application/json`. If you are savvy enough to look for yourself, feel free, otherwise just take my word for it. The point is, we didn't have to do anything special to get express to send our javascript object as JSON data.

This is the basis for sending data back from a RESTful resource. This information will probably come from a database in a real application, but since that data will most likely be represented as a javascript object anyway, this works the same way.

This is just one way to output information. Let's move on to rendering HTML with views.