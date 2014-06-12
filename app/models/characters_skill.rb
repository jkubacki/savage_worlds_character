class CharactersSkill < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill
  belongs_to :dice
end
