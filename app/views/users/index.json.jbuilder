json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :employee_number, :email, :street, :city, :state, :zip, :home_phone, :cell_phone, :hourly_rate
  json.url user_url(user, format: :json)
end
