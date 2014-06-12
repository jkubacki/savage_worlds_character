class ReqRank < ActiveRecord::
  has_one :requirement, as: :req
  belongs_to :rank
end
