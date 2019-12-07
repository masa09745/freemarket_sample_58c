// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs

$(document).on("turbolinks:load", function() {
  $('.toppage-slider__wrapper').slick({
  // ドットにクラスを追加
    dotsClass: 'slide-dots',
    // ドットを追加する要素を指定
    appendDots: $('.toppage-slider'),
    // スライダー矢印の指定
    prevArrow:'<i class="fas fa-chevron-left", id="prev-arrow"></i>',
    nextArrow:'<i class="fas fa-chevron-right", id="next-arrow"></i>',
    // ドットの有無 インジケーター
    dots: true,
    // 自動再生
    autoplay: true,
    autoplaySpeed: 4000,
    speed: 800,
});

// ドットの操作
  $('.slide-dots li').on('mouseover', function() {
    $('.slider').slick('goTo', $(this).index());
  });
// ボタンスライド
  $('.toppage-main__logo').click(function(){
    alert("あああ")
  })

});