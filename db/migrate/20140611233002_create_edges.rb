class CreateEdges < ActiveRecord::Migration
  def change
    create_table :edges do |t|
      t.string :name
      t.text :description
      t.belongs_to :edge_type, index: true
      t.belongs_to :rank, index: true

      t.timestamps
    end
  end
end
