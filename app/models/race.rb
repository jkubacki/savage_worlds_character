class Race < ActiveRecord::Base
  has_and_belongs_to_many :modifiers

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end
end
