json.array!(@jobs) do |job|
  json.extract! job, :id, :organization, :location, :details, :start_date, :end_date, :category_id
  json.url job_url(job, format: :json)
end
