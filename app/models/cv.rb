class Cv
  include Mongoid::Document
  store_in database: "timba_development"

  field :full_name, type: String
#  validates :full_name	, presence: true, length: { minimum: 5 }

#  field :profile, type: String
#  validates :profile , presence: true, length: { maximum: 50 }

#  field :experience, type: Integer
#  validates :experience , presence: true, length: { minimum: 1 } && { maximum:2 }

#  field :recent_work_experience, type: Array

#  field :skills, type: Array

#  field :education, type: Array
  
#  field :languages, type: Array

end
