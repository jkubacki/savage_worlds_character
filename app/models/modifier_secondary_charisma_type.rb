class ModifierSecondaryCharismaType < ActiveRecord::Base
  has_one :modifier_secondary_type, as: :modifier_secondary_type_type, dependent: :destroy
end
