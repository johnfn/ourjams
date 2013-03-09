class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by_name(params[:session][:name].downcase)

    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      if user
        flash.now[:error] = 'Invalid password.'
      else
        flash.now[:error] = "That user doesn't exist. Maybe you want to sign up?"
      end
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:success] = "Logged out. Seeya next time."
    redirect_to root_url
  end
end
