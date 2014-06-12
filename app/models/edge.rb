class Edge < ActiveRecord::Base
  belongs_to :edge_type
  belongs_to :rank
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :modifiers
end
