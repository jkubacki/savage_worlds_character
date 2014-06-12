class Rank < ActiveRecord::Base
  has_many :edges
  has_many :powers

  def self.method_missing(method_name, *args, &block)
    find_by(name: method_name.to_s.titleize)
  end

end
