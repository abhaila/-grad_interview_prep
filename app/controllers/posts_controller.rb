class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def new
    @post = Post.new
    authorise @post
  end

  def create
    @post = Post.new(post_params)
    authorise @post
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
