class RigsController < ApplicationController
  def new
    @rig = Rig.new
    @fixture = Fixture.new
  end

end
