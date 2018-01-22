class PagesController < ApplicationController
  def home
  end

  def rig
  end


  def stage
    @video = Video.find session[:number]
  end
end
