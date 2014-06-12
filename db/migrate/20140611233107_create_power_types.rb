class CreatePowerTypes < ActiveRecord::Migration
  def change
    create_table :power_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
