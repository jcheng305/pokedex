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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(user_update_params)
        flash[:success] = "Profile Updated!"
        redirect_to user_path
      else
        flash[:error] = "Please Try Again!"
        render :edit
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "User has been successfully deleted!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password ,:profile_image)
  end

  def user_update_params
    params.require(:user).permit(:name, :email, :profile_image)
  end

end
