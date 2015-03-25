class LairsController < ApplicationController

  def index
    @lairs = Lair.all
    @lair = Lair.new
  end

  def new
  end

  def create
    @lair = Lair.new(lair_params)
    if @lair.save
      flash[:notice] = "Lair listed."
      redirect_to lairs_path
    else
      flash[:alert] = "There was a problem"
      redirect_to lairs_path
    end
  end

  private
    def lair_params
      params.require(:lair).permit(:name, :lair_type, :price, :doomsday_devices)
    end
end
