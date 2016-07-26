class Audio < Attachment

  include AudioUploader[:file]

  delegate :original_filename, to: :file, allow_nil: true

end
