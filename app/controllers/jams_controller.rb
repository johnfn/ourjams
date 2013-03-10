class JamsController < ApplicationController
  def new
    @jam = Jam.new
  end

  def create
    #organizer = User.find(params[:user_id])
    #params.delete(:user_id)
    @jam = Jam.create(params[:jam])
    #@jam.user = organizer
    if @jam.save
      flash[:success] = "New Jam successfully created!"
      redirect_to @jam
    else
      flash[:failure] = "That didn't verify, for some reason."
      render 'new'
    end
  end

  def show
    @jam = Jam.find(params[:id])
    @entry = Entry.new
  end
end
