class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.integer :mod_id
      t.string :mod_type

      t.timestamps
    end
  end
end
