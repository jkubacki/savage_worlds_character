class Edge < ActiveRecord::Base
  belongs_to :edge_type
  belongs_to :rank
end
