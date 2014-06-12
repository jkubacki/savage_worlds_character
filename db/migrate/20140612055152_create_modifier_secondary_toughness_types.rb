class CreateModifierSecondaryToughnessTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_toughness_types do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
