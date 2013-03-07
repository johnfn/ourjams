class ComposController < ApplicationController
  def new
  end

  def show
    @compo = Compo.first
  end
end
