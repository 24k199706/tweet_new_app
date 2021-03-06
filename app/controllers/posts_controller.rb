class PostsController < ApplicationController
  def index
    @posts=Post.all.order(created_at: :desc)
  end
  def show
    @post= Post.find_by(id: params[:id])
  end
  
  def new
    
  end

  def create
    @post=Post.new(content: params[:content])
    @post.save
    redirect_to index_path
  end

  def edit
    @post=Post.find_by(id: params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to index_path
    else
      redirect_to edit_path  
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to index_path
  end
  private
    def post_params
      params.require(:post).permit(:content)
    end
end
