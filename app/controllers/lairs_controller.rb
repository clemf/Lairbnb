class LairsController < ApplicationController

  def index
    @lairs = Lair.all
  end

end
