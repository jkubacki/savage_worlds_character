class CreateDices < ActiveRecord::Migration
  def change
    create_table :dices do |t|
      t.integer :number
      t.integer :plus

      t.timestamps
    end
  end
end
