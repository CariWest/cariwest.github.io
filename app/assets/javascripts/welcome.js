// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

ListenFor = (function() {
  var displaySectionListener = function(section) {
    $('.main-content').hide();
    $(section).on('click', function(event) {
      $(this).find('.main-content').show()
    });
  }

  return {
    section: displaySectionListener
  }
})();

$(document).ready(function() {
  ListenFor.section('#projects');
  ListenFor.section('#blog');
  ListenFor.section('#resume');
  ListenFor.section('#about');
  ListenFor.section('#contact');
});