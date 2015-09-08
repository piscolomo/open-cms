class ImagesController < ApplicationController
  def upload
    uploaded_images = []
    params["files"].each do |f|
      if r = Cloudinary::Uploader.upload(f.path)
        uploaded_images << {url: r["url"]}
      end
    end
    render json: {files: uploaded_images}, status: 201
  end
end
