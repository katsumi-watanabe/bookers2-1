class UsersController < ApplicationController

  def index
    @user = User.new
    @users = User.all
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end