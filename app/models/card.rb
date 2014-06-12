class Card < ActiveRecord::Base
  belongs_to :card_rank
  belongs_to :card_suite
end
