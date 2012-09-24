class PostsController < ApplicationController
  
  before_filter :login_required
  
  def show
    @post = Post.find params[:id]
  end
  
  
  def new
    @post = Post.new
  end
  
  
  def create
    @post = params[:post_type].constantize.new params[:post]
    
    if @post.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end
  
end
