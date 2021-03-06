// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.turbolinks
//= require jquery
//= require jquery_ujs

//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/carousel
//= require bootstrap/collapse
//= require bootstrap/tab
//= require bootstrap/modal
//= require jquery.wow.min
//= require jquery.back-to-top
//= require jquery.smooth-scroll
//= require components/swiper.min
//= require components/wow.min
//= require components/swiper.min
//= require owl.carousel
//= require jquery.raty.js
//= require ratyrate.js.erb
//= require_tree .


$(".owl-carousel").owlCarousel();
$(function(){ $(document).foundation(); });
