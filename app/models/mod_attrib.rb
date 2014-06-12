class ModAttrib < ActiveRecord::Base
  has_one :modifier, as: :mod
  belongs_to :attrib
end
