class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :author, :posted_date, :read_time, :post_views, :post_comments)
  end

end
