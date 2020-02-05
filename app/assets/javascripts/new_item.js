$(document).on("turbolinks:load", function() {
  $(function () {

    var dataBox = new DataTransfer();

    var file_field = document.querySelector('input[type=file]');

    $(document).on('change', $('#image-file'), function (e) {

      $.each(e.target.files, function(i, file) {

        var countA = $('.sell-upload__image').children().length;

        var fileReader = new FileReader();

        dataBox.items.add(file);

        file_field.files = dataBox.files;

        fileReader.readAsDataURL(file);

        var input_area = $('.sell-upload__image');
        var new_input = $(`<input id="image-file" type="file" style="display:none" name="freemarket[item_images_attributes][${countA}][image_url]">`);
        input_area.prepend(new_input);

        if(countA == 10) {
          $("#image-drop").css("display", "none");
          $('#image-drop2').show();
        };

        if(countA < 11) {
          fileReader.onloadend = function () {
            var src = fileReader.result;
            var html = `<div class='item-image' data-image="${file.name}">
                          <div class=' item-image__content'>
                            <div class='item-image__content--icon'>
                              <img src=${src} width="114" height="80" >
                            </div>
                          </div>
                          <div class='item-image__operetion'>
                            <div class='item-image__operetion--delete'>削除</div>
                          </div>
                        </div>`
            $('.sell-upload__image').prepend(html);
          };
        } else {
          fileReader.onloadend = function () {
            var src = fileReader.result;
            var html = `<div class='item-image' data-image="${file.name}">
                          <div class=' item-image__content'>
                            <div class='item-image__content--icon'>
                              <img src=${src} width="114" height="80" >
                            </div>
                          </div>
                          <div class='item-image__operetion'>
                            <div class='item-image__operetion--delete'>削除</div>
                          </div>
                        </div>`
            $('.sell-upload__image2').prepend(html);
          };
        };

        if (countA == 16) {
          $("#image-drop2").css("display", "none");
        };


      });
    });

    $(document).on("click", '.item-image__operetion--delete', function(){

      var target_image = $(this).parent().parent()

      target_image.remove();

      file_field.val("")
    });

  });
});