$(document).on('turbolinks:load', function(){
  $(function(){
    $('#image-drop').on('click',function () {
      $('.hidden-image').click();
    });


    function buildHTML(count) {
      var html = `<div class="item-preview__inner" id="item-preview__${count}">
                    <div class="item-image">
                      <img src="" alt="preview">
                    </div>
                    <div class="item-edit">
                      <div class="item-edit__image">
                        <label class="edit_btn">編集</label>
                      </div>
                      <div class="item-edit__delete" id="delete_btn_${count}">
                        <span>削除</span>
                      </div>
                    </div>
                  </div>`
      return html;
    }

    function setLabel() {
      var prevContent = $('#image-drop').prev();
      labelWidth = (620 - $(prevContent).css('width').replace(/[^0-9]/g, ''));
      $('#image-drop').css('width', labelWidth);
    }

    $(document).on('change', '.hidden-field', function() {
      setLabel();
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $('.label-box').attr({id: `label-box--${id}`,for: `freemarket_item_images_attributes_${id}_image_url`});

      var file = this.files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);

      reader.onload = function() {
        var image = this.result;
        if ($(`#item-preview__${id}`).length == 0) {
          var count = $('.item-preview__inner').length;
          var html = buildHTML(id);
          var prevContent = $('#image-drop').prev();
          $(prevContent).append(html);
        }

        $(`#item-preview__${id} img`).attr('src', `${image}`);
        var count = $('.item-preview__inner').length;
        if (count == 5) {
          $('#image-drop').css("display", "none");
          $('.label-box__text-visible').css("display", "none");
        }

        setLabel();
        if(count < 5){
          $('.label-box').attr({id: `label-box--${count}`,for: `freemarket_item_images_attributes_${count}_image_url`});
        }

      }
    });


    $(document).on('click', '.item-edit__delete', function() {
      var count = $('.item-preview').length;
      setLabel(count);
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $(`#item-preview__${id}`).remove();
      $(`#freemarket_item_images_attributes_${id}_image_url`).val("");
      var count = $('.item-preview').length;
      if (count == 4) {
        $('#image-drop').show();
      }
      setLabel(count);

      if(id < 5){
        $('.label-box').attr({id: `label-box--${id}`,for: `freemarket_item_images_attributes_${id}_image_url`});
      }
    });
  });
})