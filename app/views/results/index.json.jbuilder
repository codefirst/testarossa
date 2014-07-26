json.array!(@results) do |result|
  json.extract! result, :id, :title, :description
  json.url test_result_url(result, format: :json)
end
