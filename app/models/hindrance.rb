class Hindrance < ActiveRecord::Base
  belongs_to :hindrance_type
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :modifiers

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end
end
