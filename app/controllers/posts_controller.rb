class PostsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

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

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :content, :summary, :photo)
  end
end
