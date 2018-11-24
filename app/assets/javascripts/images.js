// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('images:loaded', function() {
  $('#image').attr('src', $('#image_url').val());

  $('#image_url').on('change', function() {
    $('#image').attr('src', $(this).val());
  });
});