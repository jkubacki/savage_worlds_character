class CreateModifierSecondaryBenniesTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_bennies_types do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
