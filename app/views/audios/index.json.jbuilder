json.audios @audios do |audio|
  json.id audio.id
  json.file_data audio.file_data
  json.type audio.type
  json.url audios_url audio, format: :json
end