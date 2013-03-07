class ApplicationController < ActionController::Base
  protect_from_forgery

  def show
    @jams = Jam.all
  end
end
