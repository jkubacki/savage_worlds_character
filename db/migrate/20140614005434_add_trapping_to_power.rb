class AddTrappingToPower < ActiveRecord::Migration
  def change
    add_column :powers, :trapping, :string
  end
end
