class CreateModifierSecondaryPaceTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_pace_types do |t|
      t.integer :mod

      t.timestamps
    end
  end
end
