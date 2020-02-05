$(document).on('turbolinks:load', function(){
  $(function(){
    // file_fieldを開く
    $('#image-drop').on('click',function () {
      $('.hidden-image').click();
    });


    //プレビューのhtmlを定義
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

    // ラベルのwidth操作
    function setLabel() {
      //プレビューボックスのwidthを取得し、maxから引くことでラベルのwidthを決定
      var prevContent = $('#image-drop').prev();
      labelWidth = (620 - $(prevContent).css('width').replace(/[^0-9]/g, ''));
      $('#image-drop').css('width', labelWidth);
    }

    // プレビューの追加
    $(document).on('change', '.hidden-field', function() {
      setLabel();
      //hidden-fieldのidの数値のみ取得
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      //labelボックスのidとforを更新
      $('.label-box').attr({id: `label-box--${id}`,for: `freemarket_item_images_attributes_${id}_image_url`});
      //選択したfileのオブジェクトを取得
      var file = this.files[0];
      var reader = new FileReader();
      //readAsDataURLで指定したFileオブジェクトを読み込む
      reader.readAsDataURL(file);
      //読み込み時に発火するイベント
      reader.onload = function() {
        var image = this.result;
        //プレビューが元々なかった場合はhtmlを追加
        if ($(`item-preview__${id}`).length == 0) {
          var count = $('.item-preview').length;
          var html = buildHTML(id);
          //ラベルの直前のプレビュー群にプレビューを追加
          var prevContent = $('#image-drop').prev();
          $(prevContent).append(html);
        }
        //イメージを追加
        $(`#item-preview__${id} img`).attr('src', `${image}`);
        var count = $('.item-preview').length;
        //プレビューが5個あったらラベルを隠す 
        if (count == 5) { 
          $('#image-drop').css("display", "none");
          $('.label-box__text-visible').css("display", "none");
        }

        //ラベルのwidth操作
        setLabel();
        //ラベルのidとforの値を変更
        if(count < 5){
          //プレビューの数でラベルのオプションを更新する
          $('.label-box').attr({id: `label-box--${count}`,for: `freemarket_item_images_attributes_${count}_image_url`});
        }
      }
    });

    // 画像の削除
    $(document).on('click', '.item-edit__delete', function() {
      var count = $('.item-preview').length;
      setLabel(count);
      //item_images_attributes_${id}_image から${id}に入った数字のみを抽出
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      //取得したidに該当するプレビューを削除
      $(`#item-preview__${id}`).remove();
      //フォームの中身を削除 
      $(`#item_images_attributes_${id}_image`).val("");

      //削除時のラベル操作
      var count = $('.item-preview').length;
      //5個めが消されたらラベルを表示
      if (count == 4) {
        $('#image-drop').show();
      }
      setLabel(count);

      if(id < 5){
        //削除された際に、空っぽになったfile_fieldをもう一度入力可能にする
        $('.label-box').attr({id: `label-box--${id}`,for: `freemarket_item_images_attributes_${id}_image_url`});
      }
    });
  });
})