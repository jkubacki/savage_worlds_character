class CreateModifierPowerTypes < ActiveRecord::Migration
  def change
    create_table :modifier_power_types do |t|
      t.belongs_to :power, index: true

      t.timestamps
    end
  end
end
