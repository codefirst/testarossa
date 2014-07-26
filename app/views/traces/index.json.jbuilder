json.array!(@traces) do |trace|
  json.extract! trace, :id, :title, :description, :state, :judgement, :sort
  json.url trace_url(trace, format: :json)
end
