class CreateModEdges < ActiveRecord::Migration
  def change
    create_table :mod_edges do |t|
      t.belongs_to :edge, index: true

      t.timestamps
    end
  end
end
