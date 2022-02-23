class UsersController < ApplicationController
  def index
    user = User.all
    render json: user
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      first_name: params[:first_name],
      last_name: params[:last_name],
      description: params[:description],
      password: params[:password], #this is a ruby thing
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
