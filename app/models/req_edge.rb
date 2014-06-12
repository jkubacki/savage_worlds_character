class ReqEdge < ActiveRecord::Base
  has_one :requirement, as: :req
  belongs_to :edge
end
