class Modifier < ActiveRecord::Base
  belongs_to :mod, polymorphic: true
  has_and_belongs_to_many :edges
  has_and_belongs_to_many :hindrances
  has_and_belongs_to_many :races
end
