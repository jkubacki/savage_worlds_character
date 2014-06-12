class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :exp
      t.integer :bennies
      t.integer :money
      t.integer :ini_cards
      t.belongs_to :ini_min
      t.belongs_to :ini_max
      t.belongs_to :race, index: true
      t.belongs_to :rank, index: true
      t.belongs_to :character_type, index: true

      t.timestamps
    end
  end
end
