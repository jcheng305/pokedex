class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create, :user_params]

  def index
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      flash[:success] = "Account Successfully Created!"
      login @user
        redirect_to @user
    else
      flash[:error] = @user.errors.full_messages.join(". ")
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password ,:profile_image)
  end

#   def check_owner
#     if session[:user_id] != User.find(params[:id])
#       redirect_to user_path(current_user)
#   end
# end
end
