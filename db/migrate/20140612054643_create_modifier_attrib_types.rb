class CreateModifierAttribTypes < ActiveRecord::Migration
  def change
    create_table :modifier_attrib_types do |t|
      t.integer :dices
      t.integer :plus
      t.belongs_to :attrib, index: true

      t.timestamps
    end
  end
end
