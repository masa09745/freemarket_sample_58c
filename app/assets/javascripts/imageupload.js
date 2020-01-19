$(document).on('turbolinks:load', function() {
  $('#image-drop').on('click',function () {
    $('#image-file').trigger("click");
  });
});

$(document).on('turbolinks:load', function() {
  $('#image-drop2').on('click',function () {
    $('#image-file').trigger("click");
  });
});