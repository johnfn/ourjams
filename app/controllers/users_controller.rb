class UsersController < ApplicationController
  before_filter :find_user, :only => [:show]

protected

  def find_user
    @user = User.find(params[:id])
  end
end
