class JamsController < ApplicationController
  def new
    @jam = Jam.new
  end

  def create
    @jam = Jam.create(params[:jam])
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
