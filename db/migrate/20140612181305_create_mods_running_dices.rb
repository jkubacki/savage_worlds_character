class CreateModsRunningDices < ActiveRecord::Migration
  def change
    create_table :mods_running_dices do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
