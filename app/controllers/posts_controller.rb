class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def create
    authorise @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    authorize @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :summary)
  end
end
