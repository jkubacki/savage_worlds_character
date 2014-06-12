class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.integer :modifier_type_id
      t.string :modifier_type_type
      t.timestamps
    end
  end
end
