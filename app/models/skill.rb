class Skill < ActiveRecord::Base
  belongs_to :attrib
  has_many :characters, through: :characters_skills
end
