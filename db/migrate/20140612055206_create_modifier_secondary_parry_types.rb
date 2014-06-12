class CreateModifierSecondaryParryTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_parry_types do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
