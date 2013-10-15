# open external links in new tab/window
for anchor in document.querySelectorAll('a')
  if anchor.getAttribute('href').match /^http/
    anchor.setAttribute 'target', '_blank'