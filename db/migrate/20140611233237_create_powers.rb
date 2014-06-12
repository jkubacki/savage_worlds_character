class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :name
      t.text :description
      t.string :cost
      t.string :range
      t.string :duration
      t.belongs_to :power_type, index: true
      t.belongs_to :rank, index: true

      t.timestamps
    end
  end
end
