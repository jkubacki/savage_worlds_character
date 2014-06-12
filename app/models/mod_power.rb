class ModPower < ActiveRecord::Base
  has_one :modifier, as: :mod
  belongs_to :power
end
