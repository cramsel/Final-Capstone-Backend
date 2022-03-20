class PostsController < ApplicationController
  def index
    posts = Post.all.includes(:user, :comments)
    render json: posts
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post, include: "user,comments.user"
  end

  def create
    if params[:audio_url]
      audio = params[:audio_url]
    else
      response = Cloudinary::Uploader.upload(params[:audio_file], resource_type: :auto)
      audio = response["secure_url"]
    end

    post = Post.new(
      user_id: current_user.id,
      title: params[:title],
      audio_url: audio,
      description: params[:description],
      audio_type: params[:audio_type] || true,
    )

    if post.save
      render json: { message: "Audio Saved" }, status: :created
    else
      render json: { message: post.errors.full_messages }, status: :bad_request
    end
  end
end
