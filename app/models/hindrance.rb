class Hindrance < ActiveRecord::Base
  belongs_to :hindrance_type
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :modifiers
end
