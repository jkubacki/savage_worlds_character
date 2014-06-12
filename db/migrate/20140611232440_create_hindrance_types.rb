class CreateHindranceTypes < ActiveRecord::Migration
  def change
    create_table :hindrance_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
