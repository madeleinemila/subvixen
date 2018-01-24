class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    begin
      cloudinary = Cloudinary::Uploader.upload( params[:video][:file],
        :resource_type => :video,
        :eager => [
          { :format => "mp4", :width => 640, :crop => "limit" },
          { :format => "mp4", :width => 360, :crop => "limit" },
        ],
        :eager_async => false, # TODO could have eager callback and do async?
      )
      # TODO also trim length
      # TODO handle sizes more than 40mb
    rescue CloudinaryException => e
      @upload_error = e.message
      @video = Video.new
      render :new and return
    end

    # TODO also client side validations - Cloudinary suggest their jQuery way
    # TODO add eager transformations
    @video = Video.new(video_params)
    @video.url = cloudinary["secure_url"]
    @video.transform_url = cloudinary["eager"][0]["secure_url"]
    @video.transform_sml_url = cloudinary["eager"][1]["secure_url"]
    if @video.save
      redirect_to @video
    else
      render :new
    end
  end

  def index
    @videos = Video.all
    @thumbs = []
    @videos.each do |v|
      segs = /(https:\/\/res.cloudinary.com\/mrmy\/video\/upload\/)(.*\.)/.match( v.url )
      thumb = segs[1] + "so_0,w_150,h_150,c_fill/" + segs[2] + "jpg"
      @thumbs.push thumb
    end
    @thumbs
  end

  def show
    @video = Video.find params[:id]
    session[:number] = @video.id # persisting in session hash to use in stage
  end

  private
  def video_params
    params.require(:video).permit(:name)  # TODO add tags?
  end
end
