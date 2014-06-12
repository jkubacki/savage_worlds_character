class CreateModsParries < ActiveRecord::Migration
  def change
    create_table :mods_parries do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
