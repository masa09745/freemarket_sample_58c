$(document).on('turbolinks:load', function() {
  $(function() {
    $('#click-balloon').on('click', function() {
      $(this)
        .children()
        .fadeIn();
      $('.bk-balloon').fadeIn();
    });
    $('.bk-balloon').on('click', function() {
      $('.balloon,..bk-balloon').fadeOut();
    });
  });
});
