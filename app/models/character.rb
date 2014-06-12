class Character < ActiveRecord::Base
  belongs_to :ini_min, class_name: 'Card'
  belongs_to :ini_max, class_name: 'Card'
  belongs_to :race
  belongs_to :rank
  belongs_to :character_type
end
