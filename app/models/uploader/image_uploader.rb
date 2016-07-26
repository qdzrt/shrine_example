require 'image_processing/mini_magick'
class ImageUploader < Shrine
  include ImageProcessing::MiniMagick
  plugin :validation_helpers
  plugin :determine_mime_type
  plugin :versions, names: [:original, :medium, :small, :mini]

  Attacher.validate do
    validate_max_size 2*1024*1024, message: "is too large (max is 2 MB)"
    validate_mime_type_inclusion ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"]
  end

  def process(io, context)
    if context[:phase] == :store
      suffix = io.data['id'].split('.').last
      if suffix =~ /jpeg|jpg|gif|png|bmp/i
        original = io.download
        size_500 = resize_to_limit(original, 500, 500)
        size_300 = resize_to_limit(size_500, 300, 300)
        size_200 = resize_to_limit(size_300, 200, 200)
        {original: io, medium: size_500, small: size_300, mini: size_200}
      else
        { original: io }
      end
    end
  end
end