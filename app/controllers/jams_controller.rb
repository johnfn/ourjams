# coding: utf-8

class JamsController < ApplicationController
  def new
    if !signed_in?
      flash[:failure] = "Log in first."
      redirect_to root_url
    else
      @jam = Jam.new
    end
  end

  def update
    @jam = Jam.find(params[:id])

    if @jam.update_attributes(params[:jam])
      flash[:success] = "Jam successfully updated!"
      redirect_to(@jam)
    else
      flash[:failure] = "Something went wrong."
      redirect_to(@jam)
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
    @can_edit = signed_in? && @jam.user.id == current_user.id

    @jam_started = Time.now - @jam.start > 0
    @jam_ended = Time.now - @jam.end > 0
    @jam_ongoing = @jam_started && !@jam_ended
  end
end
