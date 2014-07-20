json.array!(@test_case_steps) do |test_case_step|
  json.extract! test_case_step, :id, :title, :description, :sort
  json.url test_case_step_url(test_case_step, format: :json)
end
