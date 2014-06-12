class CreateModifierEdgeTypes < ActiveRecord::Migration
  def change
    create_table :modifier_edge_types do |t|
      t.belongs_to :edge, index: true

      t.timestamps
    end
  end
end
