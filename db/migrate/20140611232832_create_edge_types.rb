class CreateEdgeTypes < ActiveRecord::Migration
  def change
    create_table :edge_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
