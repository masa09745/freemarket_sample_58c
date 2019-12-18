$(document).on('turbolinks:load', function() {
  $('#image-drop').on('click',function () {
    $('#file').get(0).click();
  });
});