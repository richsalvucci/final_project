// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var round_javascript = function(){
  $(document.body).on("focus", ".user_name", function() {
    $(this).autocomplete({
      source: "/rounds/user_name",
      minLength: 3,
      select: function( event, ui ) {
        $(this).siblings(".user_id").val(ui.item.id)
      }

    })
console.log("Am I here");
  })
};




$(document).ready(round_javascript);
$(document).on("page:load", round_javascript);