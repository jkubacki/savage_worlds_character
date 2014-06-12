class CreateModSkills < ActiveRecord::Migration
  def change
    create_table :mod_skills do |t|
      t.belongs_to :skill, index: true
      t.integer :dice_mod
      t.integer :mod

      t.timestamps
    end
  end
end
