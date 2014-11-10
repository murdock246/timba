class Curriculum
	LANGUAGES = %w(English Spanish Italian French Chinese Ducth)
  include Mongoid::Document
  store_in database: "timba_development"

  field :name, type: String
#  validates :full_name	, presence: true, length: { minimum: 5 }

  field :profile, type: String
#  validates :profile , presence: true, length: { maximum: 50 }

  field :experience, type: Integer
#  validates :experience , presence: true, length: { minimum: 1 } && { maximum:2 }

  field :availability, type: String

  field :recent_work_experience, type: String

  field :skills, type: String

  field :education, type: String
  
  field :languages, :type => String
  
  #field :languages, type: String
end
