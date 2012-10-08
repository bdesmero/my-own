class WordsController < ApplicationController
  
  def index
    @words = Word.page(params[:page])
  end


  def show
    @word = Word.find params[:id]
  end


  def new
    @word = Word.new
  end


  def create
    @word = Word.new params[:word]
    
    if @word.save
      redirect_to @word
    else
      render :new
    end
  end


  def edit
    @word = Word.find params[:id]
  end
  
  
  def update
    @word = Word.find params[:id]
    
    if @word.update_attributes params[:word]
      redirect_to @word
    else
      render :edit
    end
  end
end
