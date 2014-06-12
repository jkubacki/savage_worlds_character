class CreateModsCharismas < ActiveRecord::Migration
  def change
    create_table :mods_charismas do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
