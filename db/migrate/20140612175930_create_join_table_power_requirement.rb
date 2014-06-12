class CreateJoinTablePowerRequirement < ActiveRecord::Migration
  def change
    create_join_table :powers, :requirements do |t|
      # t.index [:power_id, :requirement_id]
      # t.index [:requirement_id, :power_id]
    end
  end
end
