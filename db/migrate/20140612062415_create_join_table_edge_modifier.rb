class CreateJoinTableEdgeModifier < ActiveRecord::Migration
  def change
    create_join_table :edges, :modifiers do |t|
      # t.index [:edge_id, :modifier_id]
      # t.index [:modifier_id, :edge_id]
    end
  end
end
