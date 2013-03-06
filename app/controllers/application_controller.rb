class ApplicationController < ActionController::Base
  protect_from_forgery

  def show
    @herpderp = "66"
  end
end
