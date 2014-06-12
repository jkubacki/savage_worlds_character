class CreateModifierHindranceTypes < ActiveRecord::Migration
  def change
    create_table :modifier_hindrance_types do |t|
      t.belongs_to :hindrance, index: true

      t.timestamps
    end
  end
end
