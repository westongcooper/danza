// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function start_js() {
  console.log('fuck yea');
  $(".button-collapse").sideNav();
  $('.parallax').parallax();
  $('.modal-trigger').leanModal();

  $('.card.small').mouseenter(function() {
      $(this).addClass("redBorder", 5000);
  });
  $('.card.small').mouseleave(function() {
      $(this).removeClass("redBorder", 5000);
  });
}

$(document).on('ready page:load', start_js);

// function sticky_relocate() {
//     var window_top = $(window).scrollTop();
//     var div_top = $('#navBarSticky').offset().top;
//     if (window_top > div_top) {
//         $('#schedList').addClass('stick');
//     } else {
//         $('#schedList').removeClass('stick');
//     }
// }
//
// $(function () {
//     $(window).scroll(sticky_relocate);
//     sticky_relocate();
// });
