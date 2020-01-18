$(document).on('turbolinks:load', function() {
  $('#image-drop').on('click',function () {
    $('#image-file').trigger("click");
  });
});

$(document).on('turbolinks:load', function() {
  $('#image-drop').on('click',function () {
    $('#image-file2').trigger("click");
  });
});