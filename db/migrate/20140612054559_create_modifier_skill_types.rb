class CreateModifierSkillTypes < ActiveRecord::Migration
  def change
    create_table :modifier_skill_types do |t|
      t.integer :dices
      t.integer :plus
      t.belongs_to :skill, index: true

      t.timestamps
    end
  end
end
