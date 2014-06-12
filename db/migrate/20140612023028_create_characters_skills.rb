class CreateCharactersSkills < ActiveRecord::Migration
  def change
    create_table :characters_skills do |t|
      t.belongs_to :character, index: true
      t.belongs_to :skill, index: true
      t.belongs_to :dice, index: true

      t.timestamps
    end
  end
end
