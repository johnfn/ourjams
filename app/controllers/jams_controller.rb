class JamsController < ApplicationController
  def new
  end

  def show
    @jam = Jam.first
    @entry = Entry.new
  end
end
