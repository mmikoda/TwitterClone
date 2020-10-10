class MicottersController < ApplicationController
  def index
  end
  def new
    @micotter = Micotter.new
  end
  def create
    Micotter.create(content: params[:micotter][:content])
    redirect_to new_micotter_path
  end
end
