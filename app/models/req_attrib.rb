class ReqAttrib < ActiveRecord::Base
  has_one :requirement, as: :req
  belongs_to :attrib
  belongs_to :dice
end
