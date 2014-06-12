class CreateModifierSecondaryRunningDiceTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_running_dice_types do |t|
      t.integer :dices

      t.timestamps
    end
  end
end
