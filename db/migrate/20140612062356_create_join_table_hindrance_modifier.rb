class CreateJoinTableHindranceModifier < ActiveRecord::Migration
  def change
    create_join_table :hindrances, :modifiers do |t|
      # t.index [:hindrance_id, :modifier_id]
      # t.index [:modifier_id, :hindrance_id]
    end
  end
end
