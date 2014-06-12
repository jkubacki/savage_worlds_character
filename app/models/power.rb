class Power < ActiveRecord::Base
  belongs_to :power_type
  belongs_to :rank
end
