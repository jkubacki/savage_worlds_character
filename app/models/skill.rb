class Skill < ActiveRecord::Base
  belongs_to :attrib
  has_many :characters, through: :characters_skills

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end
end
