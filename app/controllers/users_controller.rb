class UsersController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login_url(@user)
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
