class CreateCardRanks < ActiveRecord::Migration
  def change
    create_table :card_ranks do |t|
      t.string :name
      t.integer :strength

      t.timestamps
    end
  end
end
