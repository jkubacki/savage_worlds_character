class EdgeType < ActiveRecord::Base
  has_many :edges
  def to_s
    self.name
  end
end
