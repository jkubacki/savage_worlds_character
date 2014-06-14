class HindranceType < ActiveRecord::Base
  has_many :hindrances
  def to_s
    self.name
  end
end
