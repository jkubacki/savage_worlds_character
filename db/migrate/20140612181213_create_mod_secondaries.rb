class CreateModSecondaries < ActiveRecord::Migration
  def change
    create_table :mod_secondaries do |t|
      t.integer :mods_id
      t.string :mods_type
      t.timestamps
    end
  end
end
