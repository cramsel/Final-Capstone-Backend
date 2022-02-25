class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post
  end

  def create
    post = Post.new(
      user_id: current_user.id,
      title: params[:title],
      audio_url: params[:audio_url],
      description: params[:description],
    )

    if post.save
      render json: { message: "Audio Uploaded" }, status: :created
    else
      render json: { message: post.errors.full_messages }, status: :bad_request
    end
  end
end
