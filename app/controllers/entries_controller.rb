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

  def show
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update_attributes(params[:entry])
      flash[:success] = "Entry successfully updated!"
      redirect_to(@entry)
    else
      flash[:failure] = "Something went wrong."
      redirect_to(@entry)
    end
  end
end
