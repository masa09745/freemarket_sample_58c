$(document).on('turbolinks:load', function() {
  $('#image-drop').on('click',function () {
    $('#image-file').trigger("click");
  });
});
