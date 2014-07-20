json.array!(@test_case_step_results) do |test_case_step_result|
  json.extract! test_case_step_result, :id, :title, :description, :state, :result, :sort
  json.url test_case_step_result_url(test_case_step_result, format: :json)
end
