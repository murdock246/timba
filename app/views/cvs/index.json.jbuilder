json.array!(@add_cvs) do |add_cv|
  json.extract! add_cv, :id, :full_name, :profile, :experience, :recent_work_experience, :skills, :education, :languages
  json.url add_cv_url(add_cv, format: :json)
end
