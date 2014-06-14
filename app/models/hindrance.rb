class Hindrance < ActiveRecord::Base
  belongs_to :hindrance_type
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :modifiers

  scope :non_racial, -> { joins(:hindrance_type).where('hindrance_types.name != ?', 'Racial') }

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end

  def add_modifier(modifier)
    if not self.modifiers.include? modifier then self.modifiers << modifier end
  end
end
