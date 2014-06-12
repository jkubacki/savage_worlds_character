class Modifier < ActiveRecord::Base
  belongs_to :modifier_type, polymorphic: true
end
