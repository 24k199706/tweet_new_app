class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  def show
    @post= Post.find_by(id: params[:id])
  end
  def new
    
  end

  def edit
    @post=Post.find_by(id: params[:id])
  end
  def update
    redirect_to("index")
  end
end