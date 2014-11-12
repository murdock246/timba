json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :name, :country, :profile, :experience, :availability, :recent_work_experience, :skills, :education, :languages
  json.url curriculum_url(curriculum, format: :json)
end