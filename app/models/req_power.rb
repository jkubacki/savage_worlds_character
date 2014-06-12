class ReqPower < ActiveRecord::Base
  has_one :requirement, as: :req
  belongs_to :power
end
