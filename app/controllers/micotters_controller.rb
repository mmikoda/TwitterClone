class MicottersController < ApplicationController
  def index
  end
  def new
    @micotter = Micotter.new
  end
end
