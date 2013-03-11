class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def show
    @recentjams = Jam.all.sort {|a, b| a.start <=> b.start }
  end
end
