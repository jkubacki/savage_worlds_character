class Race < ActiveRecord::Base
  has_and_belongs_to_many :modifiers
end
