class Document < Attachment

  include DocumentUploader[:file]

  delegate :original_filename, to: :file, allow_nil: true

end
