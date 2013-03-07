class EntriesController < ApplicationController
  def new
  end

  def create
    entry = Entry.new(params[:entry])
  end
end
