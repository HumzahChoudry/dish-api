class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user= User.find(params[:id])
    render json: @user
  end

  def follow
    @user= User.find(params[:id])
    @user_to_follow = User.find(params[:follow_id])
    if @user_to_follow && @user
      @user.follow(@user_to_follow)
      render json: @user, status: 200
    else
      errors = @user_to_follow.errors.full_messages
      errors.push(@user.errors.full_messages)
      render :json => { :errors => errors }, status: 404
    end
  end

  def query_users

    puts params[:slug]
    search_term = "%#{params[:slug]}%"
    users_array = User.where("username ILIKE ?", search_term)
    render json: users_array
  end
  def create

    @user = User.new(user_params)
    @user.username = @user.username.downcase
    @user.email = @user.email.downcase
    if @user.save
      render json: @user
    else
      render :json => { :errors => @user.errors.full_messages }, :status => 422
    end
  end
private
  def user_params
    params.require(:user).permit(:first_name,:last_name, :username, :email, :password, :password_confirmation)
  end
end
