//
//= require jquery
//= require jquery_ujs
//= require lemmon-slider.js
// require_tree .


// NOTE: window.load() != $(document).ready()
// INFO: http://stackoverflow.com/a/545005/574190
$(window).load(function() {
  $('#slider').lemmonSlider({});
});

$(function() {
  $('.hello').bind("ajax:before", function() {
    $('ul.thumbs').html("loading");
  });
});
