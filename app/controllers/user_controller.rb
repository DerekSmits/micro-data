class UserController < ApplicationController
  def index
    User.all
  end
  def create
    User.create!(user_params)
  end
  def show
    @user
  end
  def update
    @user.update!(user_params)
  end
  def destroy
    @user.destroy!
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.fetch(:user,())
  end
end
