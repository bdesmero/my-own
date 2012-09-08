class PostsController < ApplicationController
  
  before_filter :login_required
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new params[:post]
    
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
end
