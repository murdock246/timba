class Curriculum
  include Mongoid::Document

  store_in database: "timba_development"

  field :name, type: String
#  validates :full_name	, presence: true, length: { minimum: 5 }

  field :profile, type: String
#  validates :profile , presence: true, length: { maximum: 50 }

  field :experience, type: Integer
#  validates :experience , presence: true, length: { minimum: 1 } && { maximum:2 }

  field :availability, type: String

  field :recent_work_experience, type: Array, default: []

  field :skills, type: Array, default: []

  field :education, type: Array, default: []
  
  field :languages, type: Array, default: []
  
  #field :languages, type: String
end
