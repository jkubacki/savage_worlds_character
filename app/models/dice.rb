class Dice < ActiveRecord::Base
  scope :character_sheet, -> { where('number > ? and plus < ?', 3, 5) }

  def self.d3
    find_by(number: 3)
  end

  def self.d4
    find_by(number: 4)
  end

  def self.d6
    find_by(number: 6)
  end

  def self.d8
    find_by(number: 8)
  end

  def self.d10
    find_by(number: 10)
  end

  def self.d12(plus = 0)
    find_by(number: 12, plus: plus)
  end
end
