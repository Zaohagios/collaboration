json.array!(@standard_works) do |standard_work|
  json.extract! standard_work, :id, :subject, :board, :start_time, :due_time, :sun, :mon, :tue, :wed, :thu, :fri, :sat, :level, :owner
  json.url standard_work_url(standard_work, format: :json)
end
