class QuizzesController < ApplicationController
  
  def new
    @word = Word.random
    #@quiz = Word.new
    @quiz = Quiz.new
  end


  def create
    @word = Word.random
    #@quiz = Word.new
    @quiz = Quiz.new
        
    if Word.check_quiz(params[:quiz]) == 1
      redirect_to root_path
    else
      redirect_to new_quiz_path
    end
  end


  def show
  end
end
