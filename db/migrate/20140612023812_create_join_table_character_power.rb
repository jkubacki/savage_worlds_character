class CreateJoinTableCharacterPower < ActiveRecord::Migration
  def change
    create_join_table :characters, :powers do |t|
      # t.index [:character_id, :power_id]
      # t.index [:power_id, :character_id]
    end
  end
end
