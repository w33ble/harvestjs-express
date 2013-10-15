jQuery ->
  # open remote links in a new tab/window
  $('a').each (i, el) ->
    $el = $(el)
    if $el.attr('href').match('^http')
      $el.attr('target', '_blank')