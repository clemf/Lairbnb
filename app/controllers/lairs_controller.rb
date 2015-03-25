class LairsController < ApplicationController

  def index
    @lairs = Lair.all
    @lair = Lair.new
  end

  def new
  end

end
