class DocumentUploader < Shrine
  plugin :validation_helpers
  plugin :determine_mime_type

  Attacher.validate do
    validate_max_size 20*1024*1024, message: "is too large (max is 20 MB)"
  end

end
