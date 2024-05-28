module VideoHelper
	def get_video(id)
    if (id == 1)
      name = "Color Wipe"
      url = "https://res.cloudinary.com/mrmy/video/upload/v1709331421/vdzrppedleot47tvg4vv.mov"
      transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709331421/vdzrppedleot47tvg4vv.mp4"
      transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709331421/vdzrppedleot47tvg4vv.mp4"
      video = Video.new(id, name, url, transform_url, transform_sml_url)
    end

    if (id == 2)
      name = "BNW Wave"
      url = "https://res.cloudinary.com/mrmy/video/upload/v1709337386/ltzttaimdszrwsdfuqxq.mov"
      transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709337386/ltzttaimdszrwsdfuqxq.mp4"
      transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709337386/ltzttaimdszrwsdfuqxq.mp4"
      video = Video.new(id, name, url, transform_url, transform_sml_url)
    end

    if (id == 3)
      name = "Flames"
      url = "https://res.cloudinary.com/mrmy/video/upload/v1709331812/4109280-hd_1920_1080_30fps_n6cw7e.mov"
      transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709331812/4109280-hd_1920_1080_30fps_n6cw7e.mp4"
      transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709331812/4109280-hd_1920_1080_30fps_n6cw7e.mp4"
      video = Video.new(id, name, url, transform_url, transform_sml_url)
    end

    if (id == 4)
      name = "Blue Shimmer"
      url = "https://res.cloudinary.com/mrmy/video/upload/v1709332479/cimcr1e2ch9anuiokwaw.mov"
      transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709332479/cimcr1e2ch9anuiokwaw.mp4"
      transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709332479/cimcr1e2ch9anuiokwaw.mp4"
      video = Video.new(id, name, url, transform_url, transform_sml_url)
    end

    video
  end
end
