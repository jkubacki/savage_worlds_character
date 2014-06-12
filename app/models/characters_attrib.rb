class CharactersAttrib < ActiveRecord::Base
  belongs_to :character
  belongs_to :attrib
  belongs_to :dice
end
