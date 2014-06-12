class CreateJoinTableModifierRace < ActiveRecord::Migration
  def change
    create_join_table :modifiers, :races do |t|
      # t.index [:modifier_id, :race_id]
      # t.index [:race_id, :modifier_id]
    end
  end
end
