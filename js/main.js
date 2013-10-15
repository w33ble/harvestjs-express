(function() {
  var anchor, _i, _len, _ref;

  _ref = document.querySelectorAll('a');
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    anchor = _ref[_i];
    if (anchor.getAttribute('href').match(/^http/)) {
      anchor.setAttribute('target', '_blank');
    }
  }

}).call(this);
