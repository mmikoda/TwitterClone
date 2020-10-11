class MicottersController < ApplicationController
  before_action :set_micotter, only: [:show, :edit, :update]
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
  def edit
    @micotter = Micotter.find(params[:id])
  end
  def update
    @micotter = Micotter.find(params[:id])
    if @micotter.update(micotter_params)
      redirect_to micotters_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  private
  def micotter_params
    params.require(:micotter).permit(:content)
  end
  def set_micotter
    @micotter = Micotter.find(params[:id])
  end
end