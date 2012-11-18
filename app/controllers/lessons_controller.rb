class LessonsController < ApplicationController
  
  def index
  end


  def new
  end


  def show
    @lesson = Lesson.find params[:id]
  end


  def edit
  end
end
