class QuizzesController < ApplicationController
  
  def new
    @word = Word.random
    @quiz = Word.new
    raise params.inspect
  end


  def create
    #raise (Word.check_quiz(params)).inspect
    @word = Word.random
    @quiz = Word.new
    
    if Word.check_quiz(params) == 1
      redirect_to root_path
    else
      redirect_to new_quiz_path, :note => 'Wrong answer'
    end
  end


  def show
  end
end
