class UsersController < ApplicationController
  before_action :require_logged_in, only: [:welcome]
  def new
  end

  def create
    @user = User.create(user_params)
    return redirect_to '/users/new' unless @user.save
    session[:user_id] = @user.id
    redirect_to '/users/welcome'
  end

  def welcome
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
