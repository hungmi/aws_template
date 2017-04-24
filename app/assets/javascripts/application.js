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
//= require fastclick.min
//= require jquery.lazyload
//= require select2
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.ja.js
//= require auto_textarea
//= require ajax_product
//= require products
//= require products_index
//= require products_gallery
//= require paper_edit_add_new_orders
//= require paper_edit_ajax_actions
//= require paper_edit_box
//= require companies
//= require filter

$(document).on("ready", function(){
  $("img").lazyload();
  $('textarea').on("keydown", function () { 
    h(this);
  });
  $(".select2").select2();
  $('.datepicker').datepicker({
    language: 'ja',
    format: "yyyy-mm-dd",
  });
});