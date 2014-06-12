class CreateModsToughnesses < ActiveRecord::Migration
  def change
    create_table :mods_toughnesses do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
