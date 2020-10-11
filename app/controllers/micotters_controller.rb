class MicottersController < ApplicationController
  before_action :set_micotter, only: [:show, :edit, :update, :destroy]
  def index
    @micotters = Micotter.all
  end
  def new
    @micotter = Micotter.new
  end
  def create
    @micotter = Micotter.new(micotter_params)
    if params[:back]
      render :new
    else
      if @micotter.save
        redirect_to micotters_path, notice: "ミコートを作成しました"
      else
        render :new
      end
    end
  end
  def confirm
    @micotter = Micotter.new(micotter_params)
    render :new if @micotter.invalid?
  end
  def show
  end
  def edit
  end
  def update
    if @micotter.update(micotter_params)
      redirect_to micotters_path, notice: "ミコートを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @micotter.destroy
    redirect_to micotters_path, notice: "ミコートを削除しました！"
  end
  private
  def micotter_params
    params.require(:micotter).permit(:content)
  end
  def set_micotter
    @micotter = Micotter.find(params[:id])
  end
end