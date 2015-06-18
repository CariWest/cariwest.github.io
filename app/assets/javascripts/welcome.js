// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

ListenFor = (function() {
  var displaySectionListener = function(section) {
    $(section).on('click', '.interest', function(event) {
      $('.main-content').hide();
      $(this).siblings('.main-content').show();
    });
  }

  var toggleDescription = function($elt) {
    if ($elt.html() == 'More') {
      $elt.parent().siblings('.hidden').show();
      $elt.html('Less');
    } else {
      $elt.parent().siblings('.hidden').hide();
      $elt.html('More');
    }
  }

  var descriptionListener = function() {
    $('.description').on('click', function(event) {
      event.preventDefault();
      toggleDescription($(this));
    })
  }

  return {
    section: displaySectionListener,
    description: descriptionListener
  }
})();

$(document).ready(function() {
  ListenFor.section('#projects');
  ListenFor.section('#blog');
  ListenFor.section('#resume');
  ListenFor.section('#about');
  ListenFor.section('#contact');

  ListenFor.description();
});