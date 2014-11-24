class Curriculum
  include Mongoid::Document
  store_in database: "timba_development"

  embeds_many :languages
  accepts_nested_attributes_for :languages

  embeds_many :educations
  accepts_nested_attributes_for :educations

  embeds_many :work_experiences
  accepts_nested_attributes_for :work_experiences


  field :first_name, type: String
#  validates :full_name	, presence: true, length: { minimum: 5 }
  
  field :last_name, type: String

  field :country, type: String

  field :profile, type: String
#  validates :profile , presence: true, length: { maximum: 100 }

  field :experience, type: Integer
#  validates :experience , presence: true, length: { minimum: 1 } && { maximum:2 }

  field :availability, type: String

  field :preferred_environment, type: String

  #field :recent_work_experience, type: Array

  field :skills, type: Array

  def string_to_array(source)
    source.split(',').map { |v| v.strip }
  end

  def array_to_string(source)
    if source != nil
      source.join(', ')
    end
  end

  def skills_list=(arg)
    self.skills = string_to_array(arg)
  end

  def skills_list
    array_to_string(self.skills)
  end

  def recent_work_experience_list=(arg)
    self.recent_work_experience = string_to_array(arg)
  end

  def recent_work_experience_list
    array_to_string(self.recent_work_experience)
  end
end

class Language
  include Mongoid::Document
  field :name, type: String
  field :proeficiency, type: Integer
  embedded_in :curriculum
end

class Education
  include Mongoid::Document
  field :institution, type: String
  field :carreer, type: String
  embedded_in :curriculum
end

class WorkExperience
  include Mongoid::Document
  field :company, type: String
  field :job, type: String
  field :time, type: Integer
  embedded_in :curriculum
end