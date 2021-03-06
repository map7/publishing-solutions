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
//= require nivo
//= require owl.carousel
//= require_tree .

$(".backlists").first().css("display", "block")

$(function() {
  $(".genre_link").each(function(){
    $(this).click(function(){
      var genre = this.getAttribute('data-genre'); // Get the genre we are talking about
      $(".backlists").hide(0, function(){          // First hide all
        $("#" + genre).show();  // Show the one genre after all have been hidden.
      });
    })
  })
})

$(".owl-carousel").owlCarousel(
  {
  itemsCustom : [
    [450, 1],
    [600, 2],
    [700, 2],
    [800, 3],
    [900, 3],
    [1000, 3],
    [1200, 4],
    [1400, 5],
    [1600, 6]
      ],
      navigation : false
  }
);


