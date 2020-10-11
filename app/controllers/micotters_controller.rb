class MicottersController < ApplicationController
  def index
    @micotters = Micotter.all
  end
  def new
    @micotter = Micotter.new
  end
  def create
    @micotter = Micotter.new(micotter_params)
    if @micotter.save
      redirect_to micotters_path, notice: "ミコートを作成しました"
    else
      render :new
    end
  end
  def show
    @micotter = Micotter.find(params[:id])
  end
  private
  def micotter_params
    params.require(:micotter).permit(:content)
  end
end