class CreateModsBennies < ActiveRecord::Migration
  def change
    create_table :mods_bennies do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
