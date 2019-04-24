class AuthController < ApplicationController
  # skip_before_action :authorized, only: %i[create]

  def login
    user = login_user(params[:name], params[:password])
    render json: {
      user: {
        id: user.id,
        username: user.name
      },
      token: encode_token({'user_id': user.id})
    }
  end

  def create
    @user = User.new(user_params)
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
        user: {
          id: user.id,
          name: user.name
        },
        token: encode_token({'user_id': user.id})
      }
    else
      render json: nil
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :bio)
  end

end
