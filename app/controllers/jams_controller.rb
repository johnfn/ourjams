class JamsController < ApplicationController
  def new
    if !signed_in?
      flash[:failure] = "Log in first."
      redirect_to root_url
    else
      @jam = Jam.new
    end
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
    @comment = Comment.new
    @entry = Entry.new
  end
end
