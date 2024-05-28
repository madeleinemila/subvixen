class PagesController < ApplicationController
  def home
  end

  def about
  end

  def rig
    # make session rig false for user to draw rig from scratch
    session[:rig] = false
  end


  def stage
    if helpers.use_db
      @video = Video.find session[:number]
    else
      @video = helpers.get_video session[:number]
    end

    if session[:rig]
      if helpers.use_db
        @rig = Rig.find session[:rig]
      else
        @rig = helpers.get_rig session[:rig]
      end
      gon.rig = @rig
      gon.fixtures = @rig.fixtures
    end
  end
end
