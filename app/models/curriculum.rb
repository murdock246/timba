class Curriculum
  include Mongoid::Document

  store_in database: "timba_development"

  field :first_name, type: String
#  validates :full_name	, presence: true, length: { minimum: 5 }
  
  field :last_name, type: String

  field :country, type: String

  field :profile, type: String
#  validates :profile , presence: true, length: { maximum: 50 }

  field :experience, type: Integer
#  validates :experience , presence: true, length: { minimum: 1 } && { maximum:2 }

  field :availability, type: String

  field :preferred_environment, type: String

  field :recent_work_experience, type: Array

  field :skills, type: Array

  field :education, type: Array
  
  field :languages, type: Array

  def string_to_array(source)
    source.split(',').map { |v| v.strip }
  end

  def array_to_string(source)
    if source != nil
      source.join(', ')
    end
  end


  def languages_list=(arg)
    self.languages = string_to_array(arg)
  end

  def languages_list
    array_to_string(self.languages)
  end


  def education_list=(arg)
    self.education = string_to_array(arg)
  end

  def education_list
    array_to_string(self.education)
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

