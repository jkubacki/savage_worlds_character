class Power < ActiveRecord::Base
  belongs_to :power_type
  belongs_to :rank
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :requirements
end
