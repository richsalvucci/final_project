// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var round_javascript = function(){
  console.log("am i here")
  $("div.user_name").autocomplete
    source: ["test", "test_2"]
  console.log("did i make it?")
};




$(document).ready(round_javascript);
$(document).on("page:load", round_javascript);