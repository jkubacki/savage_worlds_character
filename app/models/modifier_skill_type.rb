class ModifierSkillType < ActiveRecord::Base
  has_one :modifier, as: :modifier_type, dependent: :destroy
  belongs_to :skill
end
