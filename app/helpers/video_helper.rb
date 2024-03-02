module VideoHelper
	def get_video(id)
    video = Video.new

    if (id == 1)
      video.id = 1
      video.name = "Color Wipe"
      video.url = "https://res.cloudinary.com/mrmy/video/upload/v1709331421/vdzrppedleot47tvg4vv.mov"
      video.transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709331421/vdzrppedleot47tvg4vv.mp4"
      video.transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709331421/vdzrppedleot47tvg4vv.mp4"
    end

    if (id == 2)
      video.id = 2
      video.name = "BNW Wave"
      video.url = "https://res.cloudinary.com/mrmy/video/upload/v1709337386/ltzttaimdszrwsdfuqxq.mov"
      video.transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709337386/ltzttaimdszrwsdfuqxq.mp4"
      video.transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709337386/ltzttaimdszrwsdfuqxq.mp4"
    end

    if (id == 3)
      video.id = 3
      video.name = "Flames"
      video.url = "https://res.cloudinary.com/mrmy/video/upload/v1709331812/aaafowjjehmdy4lwcpmd.mov"
      video.transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709331812/aaafowjjehmdy4lwcpmd.mp4"
      video.transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709331812/aaafowjjehmdy4lwcpmd.mp4"
    end

    if (id == 4)
      video.id = 4
      video.name = "Blue Shimmer"
      video.url = "https://res.cloudinary.com/mrmy/video/upload/v1709332479/cimcr1e2ch9anuiokwaw.mov"
      video.transform_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_640/v1709332479/cimcr1e2ch9anuiokwaw.mp4"
      video.transform_sml_url = "https://res.cloudinary.com/mrmy/video/upload/c_limit,w_360/v1709332479/cimcr1e2ch9anuiokwaw.mp4"
    end

		video
	end
end
