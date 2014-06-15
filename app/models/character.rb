class Character < ActiveRecord::Base
  belongs_to :ini_min, class_name: 'Card'
  belongs_to :ini_max, class_name: 'Card'
  belongs_to :race
  belongs_to :rank
  belongs_to :character_type
  has_many :attribs, through: :characters_attribs
  has_many :characters_attribs
  has_many :skills, through: :characters_skills
  has_many :characters_skills
  has_and_belongs_to_many :edges
  has_and_belongs_to_many :hindrances
  has_and_belongs_to_many :powers

  attr_accessible :name, :description, :exp, :bennies, :money, :ini_cards, :ini_min_id, :ini_max_id, :race_id, :rank_id, :character_type_id, :edge_ids, :hindrance_ids, :power_ids, :characters_attribs, :skill

  def characters_attrib(attrib)
    self.characters_attribs.select { |character_attrib| character_attrib.id == attrib.id }.first
  end

  def attrib_dice(attrib)
    c_attrib = characters_attrib(attrib)
    if c_attrib
      c_attrib.dice
    else
      Dice.d4
    end
  end

  def characters_skill(skill)
    self.characters_skills.select { |character_skill| character_skill.id == skill.id }.first
  end

  def skill_dice(skill)
    c_skill = characters_skill(skill)
    if c_skill
      c_skill.dice
    else
      Dice.new
    end
  end


end
