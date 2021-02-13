class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end
  
  def create
    @post = Post.new(post_params)
    authorise @post

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end


  def show
    @post = Post.find(params[:id])
  end


  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :summary, :photo)
  end
end
