json.array!(@timeclocks) do |timeclock|
  json.extract! timeclock, :id, :date, :time_in, :time_out_lunch, :time_in_lunch, :time_out, :user_id
  json.url timeclock_url(timeclock, format: :json)
end
