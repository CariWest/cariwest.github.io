// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

ListenFor = (function() {
  function visibility(element) {
    return element.is(':visible')
  }

  var displaySection = function(section) {
    $(section).on('click', '.interest', function(event) {
      $elt = $(this).siblings('.main-content');
      if (visibility($elt) === false) {
        $('.main-content').hide('slow');
        $elt.show('slow');
      }
    });
  }

  var description = function() {
    $('.description').on('click', function(event) {
      event.preventDefault();
      $(this).parent().siblings('.hidden').show('slow');
    })
  }

  var less = function() {
    $('.hidden').on('click', '.less', function(event) {
      event.preventDefault();
      $(this).parent().hide('slow');
    });
  }

  return {
    section: displaySection,
    description: description,
    less: less
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