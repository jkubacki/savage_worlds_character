class CreateModifierSecondaryTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_types do |t|
      t.integer :modifier_secondary_type_type_id
      t.string :modifier_secondary_type_type_type
      t.timestamps
    end
  end
end
