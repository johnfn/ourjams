class EntriesController < ApplicationController
  def new
  end

  def create
    user = User.find(params[:entry][:user_id])
    jam = Jam.find(params[:entry][:jam_id])
    params[:entry].delete(:user_id)
    params[:entry].delete(:jam_id)

    entry = Entry.new(params[:entry])
    entry.user = user
    entry.jam = jam
    entry.save

    redirect_to entry.jam
  end
end
