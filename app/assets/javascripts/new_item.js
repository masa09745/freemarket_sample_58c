$(document).on('turbolinks:load', function(){
  $(function(){
    $('#image-drop').on('click',function () {
      $('.hidden-image').trigger('click');
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

    // 投稿編集時
    //items/:i/editページへリンクした際のアクション=======================================
    if (window.location.href.match(/\/freemarkets\/\d+\/edit/)){
      //登録済み画像のプレビュー表示欄の要素を取得する
      var prevContent = $('#image-drop').prev();
      labelWidth = (620 - $(prevContent).css('width').replace(/[^0-9]/g, ''));
      $('#image-drop').css('width', labelWidth);
      //プレビューにidを追加
      $('.item-preview__inner').each(function(index, box){
        $(box).attr('id', `item-preview__${index}`);
      })
      //削除ボタンにidを追加
      $('.item-edit__delete').each(function(index, box){
        $(box).attr('id', `delete_btn_${index}`);
      })
      var count = $('.item-preview__inner').length;
      //プレビューが5あるときは、投稿ボックスを消しておく
      if (count == 5) {
        $('#image-drop').hide();
      }
    }
    //=============================================================================

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

        if ($(`#freemarket_item_images_attributes_${id}__destroy`)){
          $(`#freemarket_item_images_attributes_${id}__destroy`).prop('checked',false);
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

    // 画像の削除
    $(document).on('click', '.item-edit__delete', function() {
      var count = $('.item-preview__inner').length;
      setLabel(count);
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $(`#item-preview__inner__${id}`).remove();
    //新規登録時と編集時の場合分け==========================================================
      //新規投稿時
      //削除用チェックボックスの有無で判定
      if ($(`#freemarket_item_images_attributes_${id}__destroy`).length == 0) {
            //フォームの中身を削除 
        $(`#freemarket_item_images_attributes_${id}_image_url`).val("");
        var count = ('.item-preview__inner').length;
            //5個めが消されたらラベルを表示
          if (count == 4) {
            $('#image-drop').show();
          }
        setLabel(count);
          if(id < 5){
            $('.label-box').attr({id: `label-box--${id}`,for: `item_images_attributes_${id}_image`});
            }
          } 
        else {
          //投稿編集時
          $(`#freemarket_item_images_attributes_${id}__destroy`).prop('checked',true);
          //5個めが消されたらラベルを表示
          if (count == 4) {
            $('#image-drop').show();
          }
            //ラベルのwidth操作
          setLabel();
          //ラベルのidとforの値を変更
          //削除したプレビューのidによって、ラベルのidを変更する
          if(id < 5){
            $('.label-box').attr({id: `label-box--${id}`,for: `item_images_attributes_${id}_image`});
          }
        }
    });
  });
});
