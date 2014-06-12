class Attrib < ActiveRecord::Base
  has_many :skills
  has_many :characters, through: :characters_attribs

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end
end
