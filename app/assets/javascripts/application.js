// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery_nested_form
//= require bootstrap.min.js
//= require turbolinks
//= require_tree .

var load_javascript = function(){
  $("ul.nav").children().click(function(){ 
    $("ul.nav li").removeClass("active");
    console.log($(this))
    $(this).toggleClass("active");
    console.log("do i get here");
  });  
}

$(document).ready(load_javascript);
$(document).on("page:load", load_javascript);
