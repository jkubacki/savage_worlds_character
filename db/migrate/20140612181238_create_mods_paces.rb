class CreateModsPaces < ActiveRecord::Migration
  def change
    create_table :mods_paces do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
