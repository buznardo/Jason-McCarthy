#= require jquery
#= require jquery_ujs
#= require helper
#= require plugins
#= require respond
#= require filters
#= require script.js
#= require queries.js

jQuery ->
  MBP.scaleFix()
  MBP.hideUrlBarOnLoad()
  #new MBP.fastButton(document.getElementById('myBtn'), function() {alert("clicked")})
  #new MBP.autogrow(document.getElementById('myTextarea'), 14); # 14 -- line height
  MBP.enableActive()
  MBP.preventZoom()
  
  # Bio trigger
  $('.open-slide').click -> $('html').toggleClass('slidey')
  
# // NOTE: window.load() != $(document).ready()
# // INFO: http://stackoverflow.com/a/545005/574190
# $(window).load(function() {
#   $('#slider').lemmonSlider({});
# });