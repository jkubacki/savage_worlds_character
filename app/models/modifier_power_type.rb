class ModifierPowerType < ActiveRecord::Base
  has_one :modifier, as: :modifier_type, dependent: :destroy
  belongs_to :power
end
