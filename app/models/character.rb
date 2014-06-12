class Character < ActiveRecord::Base
  belongs_to :ini_min, class_name: 'Card'
  belongs_to :ini_max, class_name: 'Card'
  belongs_to :race
  belongs_to :rank
  belongs_to :character_type
  has_many :attribs, through: :characters_attribs
  has_many :skills, through: :characters_skills
  has_and_belongs_to_many :edges
  has_and_belongs_to_many :hindrances
  has_and_belongs_to_many :powers
end
