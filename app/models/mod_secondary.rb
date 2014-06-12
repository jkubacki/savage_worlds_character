class ModSecondary < ActiveRecord::Base
  has_one :modifier, as: :mod
  belongs_to :mods, polymorphic: true
end
