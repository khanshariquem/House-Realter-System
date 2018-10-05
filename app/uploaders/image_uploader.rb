class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include CarrierWave::MiniMagick

# Override the directory where uploaded files will be stored.
# This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  version :thumb do
      process resize_to_fill: [350, 350]
  end
  version :normal do
    process resize_to_fill: [1517, 641]
  end
  version :small_thumb, from_version: :thumb do
    process resize_to_fill: [20, 20]
  end
# Choose what kind of storage to use for this uploader:
  storage :file
# storage :fog
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  def content_type_whitelist
    /image\//
  end

end
