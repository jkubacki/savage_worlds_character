class CreateModifierSecondaryIniCardsTypes < ActiveRecord::Migration
  def change
    create_table :modifier_secondary_ini_cards_types do |t|
      t.integer :cards

      t.timestamps
    end
  end
end
