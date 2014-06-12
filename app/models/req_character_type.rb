class ReqCharacterType < ActiveRecord::Base
  has_one :requirement, as: :req
  belongs_to :character_type
end
