class CreateCharactersAttribs < ActiveRecord::Migration
  def change
    create_table :characters_attribs do |t|
      t.belongs_to :character, index: true
      t.belongs_to :attrib, index: true
      t.belongs_to :dice, index: true

      t.timestamps
    end
  end
end
