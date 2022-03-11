class PostController < ApplicationController
  def index
    Post.all
  end
  def create
    current_user.posts.create!(post_params)
  end
  def update
    current_user.posts.update!(post_params)
  end
  def destroy
    @post.destroy!
  end
  private
  def post
    @post = Post.find(params[:id])
  end

  def post_params
    params.fetch(:post,())
  end
end
