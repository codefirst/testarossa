json.array!(@testcase) do |testcase|
  json.extract! testcase, :id, :title, :description, :sort
  json.url testcase_url(testcase, format: :json)
end
