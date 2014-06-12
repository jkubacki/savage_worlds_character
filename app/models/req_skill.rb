class ReqSkill < ActiveRecord::Base
  has_one :requirement, as: :req
  belongs_to :skill
  belongs_to :dice
end
