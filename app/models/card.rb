class Card < ActiveRecord::Base
  belongs_to :card_rank
  belongs_to :card_suite
  def name
    self.card_rank.name + ' of ' + self.card_suite.name
  end
end
