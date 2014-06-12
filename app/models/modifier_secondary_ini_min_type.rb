class ModifierSecondaryIniMinType < ActiveRecord::Base
  has_one :modifier_secondary_type, as: :modifier_secondary_type_type, dependent: :destroy
  belongs_to :card
end
