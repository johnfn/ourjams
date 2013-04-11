class UsersController < ApplicationController
  before_filter :find_user, :only => [:show]

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:success] = "Successfully updated!"
      redirect_to(@user)
    else
      flash[:failure] = "Something went wrong."
      redirect_to(@user)
    end
  end
protected

  def find_user
    @user = User.find(params[:id])
  end
end
