// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  
  var exampleLink = $('#example-link'),
    submit = $('.submit');
  
  exampleLink.on('click', function(e){
    var display = $('#quiz-example').css('display'),
      quizExample = $('#quiz-example');
    
    if(display == 'none'){ quizExample.slideDown(); }
    else{ quizExample.slideUp(); }
  });

  
  submit.on('click', function(e){
    var answer = $('.quiz-answer').val().toLowerCase(),
      translation = $('#translation').val().toLowerCase(),
      quizAnswer = $('.quiz-answer'),
      correctAnswer = $('.correct-answer');
      
    if (answer == translation){
      quizAnswer.attr('id', 'inputWarning');
      quizAnswer.css('background-color', '#BCE954');
    }else {
      if (correctAnswer.css('display') == 'none'){  
        e.preventDefault();
        quizAnswer.attr('disabled', true);
        quizAnswer.css('background-color', '#F75D59');
        correctAnswer.slideDown();  
      }
    }
  });

});
