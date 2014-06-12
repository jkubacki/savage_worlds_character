class CreateModifierSecondaryIniMaxTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_ini_max_types do |t|
      t.belongs_to :card, index: true

      t.timestamps
    end
  end
end
