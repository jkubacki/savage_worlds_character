class ModifierEdgeType < ActiveRecord::Base
  has_one :modifier, as: :modifier_type, dependent: :destroy
  belongs_to :edge
end
