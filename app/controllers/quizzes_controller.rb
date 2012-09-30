class QuizzesController < ApplicationController
  
  def new
    @word = Word.random
  end


  def show
  end
end
