json.array!(@lawns) do |lawn|
  json.extract! lawn, :id, :width, :height
  json.url lawn_url(lawn, format: :json)
end
