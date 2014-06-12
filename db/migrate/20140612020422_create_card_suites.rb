class CreateCardSuites < ActiveRecord::Migration
  def change
    create_table :card_suites do |t|
      t.string :name
      t.integer :strength

      t.timestamps
    end
  end
end
