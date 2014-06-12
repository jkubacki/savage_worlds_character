class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :name
      t.integer :min_exp
      t.integer :max_exp

      t.timestamps
    end
  end
end
