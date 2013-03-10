class JamsController < ApplicationController
  def new
    @jam = Jam.new
  end

  def show
    @jam = Jam.first
    @entry = Entry.new
  end
end
