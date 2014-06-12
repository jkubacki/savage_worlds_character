class Edge < ActiveRecord::Base
  belongs_to :edge_type
  belongs_to :rank
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :modifiers
  has_and_belongs_to_many :requirements

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end

  def add_modifier(modifier)
    if not self.modifiers.include? modifier then self.modifiers << modifier end
  end

  def add_requirement(requirement)
    if not self.requirements.include? requirement then self.requirements << requirement end
  end
end
