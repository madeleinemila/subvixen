class RigsController < ApplicationController
  def new
    @rig = Rig.new
    @fixture = Fixture.new
  end

  def index
    @rigs = Rig.all
  end

  def show
    @rig = Rig.find params[:id]
    gon.rig = @rig
    @fixtures = @rig.fixtures
    gon.fixtures = @fixtures
  end
end
