class UsersController < ApplicationController
  def show
    @user = User.first
  end
end
