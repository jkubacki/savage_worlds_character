class Requirement < ActiveRecord::Base
  belongs_to :req, polymorphic: true
end
