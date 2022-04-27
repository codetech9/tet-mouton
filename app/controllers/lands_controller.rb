class LandsController < ApplicationController
  before_action :set_params_id, only: %i[show edit update destroy]

  def index
    @lands = Land.all
  end

  def show
  end

  def new
    @land = Land.new
  end

  def create
    @land = Land.new
    @land.save!
  end

  def edit
  end

  def update
    @land = Land.update(land_params)
    redirect_to lands_path(@land)
  end


  def destroy
    @land = Land.destroy
  end

  private

  def set_params_id
    @land = Land.find(params[:id])
  end

  def land_params
    params.require(:land).permit(:photo, :location, :area, :price, :description)
  end
end
