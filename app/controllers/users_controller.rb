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
    if user.update user_params
      render json: user
      return
    end
    render json: "Failed to update user!"
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: "Successfully destroyed user #{params[:id]}"
      return
    end
    render json: "Failed to destroy user #{params[:id]}"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
