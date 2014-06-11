class CreateAttribs < ActiveRecord::Migration
  def change
    create_table :attribs do |t|
      t.string :name

      t.timestamps
    end
  end
end
