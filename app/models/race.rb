class Race < ActiveRecord::Base
  has_and_belongs_to_many :modifiers

  def to_s
    self.name
  end

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end

  def add_modifier(modifier)
    if not self.modifiers.include? modifier then self.modifiers << modifier end
  end
end
