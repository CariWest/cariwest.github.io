// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

ListenFor = (function() {
  var displaySectionListener = function(section) {
    $(section).on('click', '.interest', function(event) {
      $('.main-content').hide('slow');
      $(this).siblings('.main-content').show('slow');
    });
  }

  var descriptionListener = function() {
    $('.description').on('click', function(event) {
      event.preventDefault();
      $(this).parent().siblings().removeClass('hidden');
      // still need to implement a way to hide the description
    })
  }

  var lessListener = function() {
    $('.hidden').on('click', '.less', function(event) {
      event.preventDefault();
      $(this).parent().addClass('hidden');
    });
  }

  return {
    section: displaySectionListener,
    description: descriptionListener,
    less: lessListener
  }
})();

$(document).ready(function() {
  ListenFor.section('#projects');
  ListenFor.section('#blog');
  ListenFor.section('#resume');
  ListenFor.section('#about');
  ListenFor.section('#contact');

  ListenFor.description();
  ListenFor.less();
});