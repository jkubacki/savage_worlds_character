class CreateModsIniMins < ActiveRecord::Migration
  def change
    create_table :mods_ini_mins do |t|
      t.belongs_to :card, index: true

      t.timestamps
    end
  end
end
