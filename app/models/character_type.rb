class CharacterType < ActiveRecord::Base
  has_many :characters
  def to_s
    self.name
  end
end
