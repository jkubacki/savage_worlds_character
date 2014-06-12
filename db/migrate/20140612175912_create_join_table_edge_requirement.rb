class CreateJoinTableEdgeRequirement < ActiveRecord::Migration
  def change
    create_join_table :edges, :requirements do |t|
      # t.index [:edge_id, :requirement_id]
      # t.index [:requirement_id, :edge_id]
    end
  end
end
