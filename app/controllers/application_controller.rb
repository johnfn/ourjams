class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper


  def show
    @jams = Jam.all
  end
end
