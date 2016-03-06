json.array!(@mowers) do |mower|
  json.extract! mower, :id, :x, :y, :headings, :commands, :lawn_id
  json.url mower_url(mower, format: :json)
end
