class ModsCharisma < ActiveRecord::Base
  has_one :mod_secondary, as: :mods
end
