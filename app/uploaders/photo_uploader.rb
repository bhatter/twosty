# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :thumnail do
    resize_to_fit 256, 256
  end

  version :find_face do
    cloudinary_transformation radius: 50,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end

  version :find_face_small do
    cloudinary_transformation radius: 50,
      width: 100, height: 100, crop: :thumb, gravity: :face
  end
end
