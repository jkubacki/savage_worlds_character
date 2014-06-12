class Requirement < ActiveRecord::Base
  belongs_to :req, polymorphic: true
  has_and_belongs_to_many :edges
  has_and_belongs_to_many :powers
end
