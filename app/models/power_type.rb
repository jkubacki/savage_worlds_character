class PowerType < ActiveRecord::Base
  has_many :powers
  def to_s
    self.name
  end
end
