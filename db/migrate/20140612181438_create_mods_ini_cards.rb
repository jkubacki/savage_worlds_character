class CreateModsIniCards < ActiveRecord::Migration
  def change
    create_table :mods_ini_cards do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
