class QuizzesController < ApplicationController
  
  def show
    @score = Score.first
  end


  def new
    @word = Word.random
    @quiz = Quiz.new
  end


  def create
    @word = Word.random
    @quiz = Quiz.new
        
    if Word.check_quiz(params[:quiz]) == 1
      redirect_to root_path
    else
      redirect_to new_quiz_path
    end
  end
  
  
  def reset_scores
    Score.reset
    redirect_to quiz_path(1)
  end

end
