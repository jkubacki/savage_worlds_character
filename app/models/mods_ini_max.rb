class ModsIniMax < ActiveRecord::
  has_one :mod_secondary, as: :mods
  belongs_to :card
end
