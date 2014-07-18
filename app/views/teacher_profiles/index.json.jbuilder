json.array!(@teacher_profiles) do |teacher_profile|
  json.extract! teacher_profile, :id, :user_id, :name, :about, :url, :email
  json.url teacher_profile_url(teacher_profile, format: :json)
end
