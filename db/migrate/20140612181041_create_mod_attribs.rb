class CreateModAttribs < ActiveRecord::Migration
  def change
    create_table :mod_attribs do |t|
      t.belongs_to :attrib, index: true
      t.integer :dice_mod
      t.integer :mod

      t.timestamps
    end
  end
end
