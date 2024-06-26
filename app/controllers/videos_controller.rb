class VideosController < ApplicationController

  def new
    @use_db = helpers.use_db
    if @use_db
      @video = Video.new
    end
  end

  def create
    begin
      if params[:video][:file].nil?
        @upload_error = "Please choose a video file to upload"
        @video = Video.new
        render :new and return
      end
      cloudinary = Cloudinary::Uploader.upload( params[:video][:file],
        :resource_type => :video,
        :eager => [
          { :format => "mp4", :width => 640, :crop => "limit" },
          { :format => "mp4", :width => 360, :crop => "limit" },
        ],
        :eager_async => false,
      )
      # TODO limit or trim length functionality
      # TODO handle sizes more than 40mb
    rescue CloudinaryException => e
      @upload_error = e.message
      @video = Video.new
      render :new and return
    end

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
    if helpers.use_db
      @videos = Video.all
    else
      # Use example videos from Cloudinary
      @videos = [helpers.get_video(1), helpers.get_video(2), helpers.get_video(3), helpers.get_video(4)]
    end
    @thumbs = []
    @videos.each do |v|
      segs = /(https:\/\/res.cloudinary.com\/mrmy\/video\/upload\/)(.*\.)/.match( v.url )
      thumb = segs[1] + "w_150,h_150,c_fill/" + segs[2] + "jpg"
      @thumbs.push thumb
    end
    @thumbs
  end

  def show
    if helpers.use_db
      @video = Video.find params[:id]
    else
      # Use example videos from Cloudinary
      id = params[:id].to_i
      @video = helpers.get_video(id)
    end

    session[:number] = @video.id # persisting in session hash to use in stage
  end

  private
  def video_params
    params.require(:video).permit(:name)
  end
end
