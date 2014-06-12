class CreateHindrances < ActiveRecord::Migration
  def change
    create_table :hindrances do |t|
      t.string :name
      t.text :description
      t.belongs_to :hindrance_type, index: true

      t.timestamps
    end
  end
end
