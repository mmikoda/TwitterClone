class MicottersController < ApplicationController
  def index
    @micotters = Micotter.all
  end
  def new
    @micotter = Micotter.new
  end
  def create
    Micotter.create(micotter_params)
    redirect_to new_micotter_path
  def show
    @micotter = Micotter.find(params[:id])
  end
  end
   private
  def micotter_params
    params.require(:micotter).permit(:content)
  end
end