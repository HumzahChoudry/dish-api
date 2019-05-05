class AuthController < ApplicationController
  # skip_before_action :authorized, only: %i[create]

  def login
    user = login_user(params[:username], params[:password])
    render json: {
      user: UserSerializer.new(user),
      token: encode_token({'user_id': user.id})
    }
  end

  def create
    @user = User.new(user_params)
    @user.username = @user.username.downcase
    @user.email = @user.email.downcase
    if @user.save
      render json: {
        user: @user,
        token: encode_token({'user_id': @user.id})
        }
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def get_current_user
    user = currentUser
    if user
      render json: {
        user: UserSerializer.new(user),
        token: encode_token({'user_id': user.id})
      }
    else
      render json: nil
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name,:last_name, :username, :email, :password, :password_confirmation, :bio)
  end

end
