class ModifierSecondaryType < ActiveRecord::Base
  has_one :modifier, as: :modifier_type, dependent: :destroy
  belongs_to :modifier_secondary_type_type, polymorphic: true
end
