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
      puts "good"
      flash[:success] = "Jam successfully updated!"
      redirect_to(@jam)
    else
      puts "bad"
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
    @can_edit = signed_in? and @jam.user.id == current_user.id
  end
end
