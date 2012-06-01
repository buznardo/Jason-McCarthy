// SLIDER
$(function() {
  $('#slider').lemmonSlider({
  });
});

// AJAX TABS
$('.hello').bind("ajax:before", function() {
  $('ul.thumbs').html('<img src="/assets/ajax-loader.gif" />');
});