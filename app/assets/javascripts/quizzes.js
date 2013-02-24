// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  
  $('#example-link').on('click', function(e){
    var display = $('#quiz-example').css('display');
    if(display == 'none'){ $('#quiz-example').slideDown(); }
    else{ $('#quiz-example').slideUp(); }
  });

  
  $('.submit').on('click', function(e){
    var answer = $('.quiz-answer').val(),
      correctAnswer = $('#translation').val();
      
    if (answer == correctAnswer){
      $('.quiz-answer').attr('id', 'inputWarning');
      $('.quiz-answer').css('background-color', '#BCE954');
    }else {
      if ($('.correct-answer').css('display') == 'none'){  
        e.preventDefault();
        $('.quiz-answer').attr('disabled', true);
        $('.quiz-answer').css('background-color', '#F75D59');
        $('.correct-answer').slideDown();  
      }
    }
  });

});
