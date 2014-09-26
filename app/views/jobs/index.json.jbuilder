json.array!(@jobs) do |job|
  json.extract! job, :id, :organization, :location, :title, :details, :begin_date, :end_date, :category
  json.url job_url(job, format: :json)
end
