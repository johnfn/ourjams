class UsersController < ApplicationController
  def show
    @user = User.first
  end

  def new
    @user = User.new
  end

  def create
    params[:user].delete("password_confirmation")
    @user = User.create(params[:user])
    if @user.save
      flash[:success] = "Welcome to Hour Compo!"
      redirect_to @user
    else
      flash[:failure] = "That didn't verify, for some reason."
      render 'new'
    end
  end
end
