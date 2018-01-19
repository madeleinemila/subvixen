class PagesController < ApplicationController
  def stage
    @video = Video.find session[:number]
  end
end
