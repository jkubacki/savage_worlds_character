class Modifier < ActiveRecord::Base
  belongs_to :modifier_type, polymorphic: true
  has_and_belongs_to_many :races
  has_and_belongs_to_many :edges
  has_and_belongs_to_many :hindrances
end
