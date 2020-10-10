class MicottersController < ApplicationController
  def index
  end
  def new
    @micotter = Micotter.new
  end
  def create
    Micotter.create(params[:micotter])
    redirect_to new_micotter_path
  end
  private
  def micotter_params
    params.require(:micotter).permit(:content)
  end
end
