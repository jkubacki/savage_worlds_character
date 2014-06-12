class Rank < ActiveRecord::Base
  has_many :edges
  has_many :powers
end
