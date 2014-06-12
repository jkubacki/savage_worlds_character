class CreateModPowers < ActiveRecord::Migration
  def change
    create_table :mod_powers do |t|
      t.belongs_to :power, index: true

      t.timestamps
    end
  end
end
