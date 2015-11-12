json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :city, :state, :bio, :coach_type, :rating, :price_low, :price_high, :language, :certification, :skills, :experience, :email
  json.url profile_url(profile, format: :json)
end
