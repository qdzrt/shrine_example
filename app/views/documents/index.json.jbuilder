json.documents @documents do |document|
  json.id document.id
  json.file_data document.file_data
  json.type document.type
  json.url documents_url document, format: :json
end
