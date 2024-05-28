class RigsController < ApplicationController
  def new
    @rig = Rig.new
    @fixture = Fixture.new
  end

  def index
    if helpers.use_db
      @rigs = Rig.all
    else
      @rigs = [helpers.get_rig(1), helpers.get_rig(2)]
    end
  end

  def show
    if helpers.use_db
      @rig = Rig.find params[:id]
    else
      id = params[:id].to_i
      @rig = helpers.get_rig(id)
    end

    gon.rig = @rig
    @fixtures = @rig.fixtures
    gon.fixtures = @fixtures
    session[:rig] = @rig.id # persisting in session hash to use in stage
  end
end
