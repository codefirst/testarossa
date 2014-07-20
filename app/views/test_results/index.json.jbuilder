json.array!(@test_results) do |test_result|
  json.extract! test_result, :id, :title, :description
  json.url test_result_url(test_result, format: :json)
end
