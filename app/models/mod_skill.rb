class ModSkill < ActiveRecord::Base
  has_one :modifier, as: :mod
  belongs_to :skill
end
