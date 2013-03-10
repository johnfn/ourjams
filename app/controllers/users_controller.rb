class UsersController < ApplicationController
  include SessionsHelper

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def update
    current_user.description = params[:user][:description]
    current_user.save

    redirect_to current_user
  end

  def create
    params[:user].delete("password_confirmation")
    @user = User.create(params[:user])
    if @user.save
      flash[:success] = "Welcome to Hour Jams!"
      redirect_to @user
    else
      flash[:failure] = "That didn't verify, for some reason."
      render 'new'
    end
  end
end
