class CreateModifierSecondaryCharismaTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_charisma_types do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
