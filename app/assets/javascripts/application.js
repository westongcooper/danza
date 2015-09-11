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
  $(".button-collapse").sideNav();
  $('.parallax').parallax();
  $('.modal-trigger').leanModal();

//    Hover for Cards
  $('.card.small').mouseenter(function() {
    $(this).addClass('redBorder',400);
  });
  $('.card.small').mouseleave(function() {
    $(this).removeClass('redBorder',400);
  });
//    Fixing the Schedule

  var scrollOffset = $("#schedList").offset().top;
    $(window).scroll(function(){
        var scrollPos = $(window).scrollTop();
        if (scrollPos >= (scrollOffset)) {
          $("#schedList").addClass("fixedPin");
        } else {
          $("#schedList").removeClass("fixedPin");
        }
    });

  $(".nav ul li a").click(function() {
      $(this).css({
        'background-color' : 'white',
        'font-weight' : 'bolder'
      });

  });



}

$(document).on('ready page:load', start_js);
