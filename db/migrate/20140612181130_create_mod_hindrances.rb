class CreateModHindrances < ActiveRecord::Migration
  def change
    create_table :mod_hindrances do |t|
      t.belongs_to :hindrance, index: true

      t.timestamps
    end
  end
end
