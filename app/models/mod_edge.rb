class ModEdge < ActiveRecord::Base
  has_one :modifier, as: :mod
  belongs_to :edge
end
