class RigsController < ApplicationController
  def new
    @rig = Rig.new
    @fixture = Fixture.new
  end

  def index
    @rigs = Rig.all
  end

end
