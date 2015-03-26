class LairsController < ApplicationController

  def index
    @lairs = Lair.all
    @lair = Lair.new
  end

  def new
  end

  def create
    @lair = Lair.new(lair_params)
    @lair.user_id = current_user.id
    if @lair.save
      flash[:notice] = "Lair listed."
      redirect_to lairs_path
    else
      flash[:alert] = "There was a problem"
      redirect_to lairs_path
    end
  end

  def update
    @lair = Lair.find(params[:id])
    if @lair.update(lair_params)
      redirect_to lairs_path
    else
      render :edit
    end
  end

  def edit
    @lair = Lair.find(params[:id])
  end

private
  def lair_params
    params.require(:lair).permit(:name, :lair_type, :price, :doomsday_devices)
  end
end
