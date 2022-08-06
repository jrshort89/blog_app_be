class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new user_params
    if user.save
      render json: user
      return
    end
    render json: "Failed to create user!"
  end

  def update
    user = User.find params[:id]

    if (current_user_can_modify user.id && user.update user_params)
      render json: user
      return
    end
    unauthorized
  end

  def destroy
    user = User.find(params[:id])
    if current_user_can_modify user.id && user.destroy
      render json: "Successfully destroyed user #{params[:id]}"
      return
    end
    unauthorized
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
