class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post, include: "user,comments.user"
  end

  def create
    response = Cloudinary::Uploader.upload(params[:audio_file], resource_type: :auto)
    cloudinary_url = response["secure_url"]

    post = Post.new(
      user_id: current_user.id,
      title: params[:title],
      audio_url: cloudinary_url,
      description: params[:description],
    )

    if post.save
      render json: { message: "Audio Uploaded" }, status: :created
    else
      render json: { message: post.errors.full_messages }, status: :bad_request
    end
  end
end
