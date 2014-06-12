class ModHindrance < ActiveRecord::Base
  has_one :modifier, as: :mod
  belongs_to :hindrance
end
