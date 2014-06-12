class CreateJoinTableCharacterEdge < ActiveRecord::Migration
  def change
    create_join_table :characters, :edges do |t|
      # t.index [:character_id, :edge_id]
      # t.index [:edge_id, :character_id]
    end
  end
end
