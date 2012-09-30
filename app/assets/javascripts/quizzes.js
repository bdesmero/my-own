// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  $('#example-link').on('click', function(e){
    var display = $('#quiz-example').css('display');
    if(display == 'none'){ $('#quiz-example').slideDown(); }
    else{ $('#quiz-example').slideUp(); }
  });

});
