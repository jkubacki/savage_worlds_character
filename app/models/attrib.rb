class Attrib < ActiveRecord::Base
  has_many :skills
  has_many :characters, through: :characters_attribs
end
