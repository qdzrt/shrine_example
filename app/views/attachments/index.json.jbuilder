json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :file_data, :type
  json.url attachment_url(attachment, format: :json)
end
