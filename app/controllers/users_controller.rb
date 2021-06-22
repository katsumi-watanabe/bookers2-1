class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
  end

  def show
  end

  def edit
    @user = User.new(user_params)
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end