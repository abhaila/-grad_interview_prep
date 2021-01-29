class PostsController < ApplicationController

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def create
    authorise @post
  end
end
