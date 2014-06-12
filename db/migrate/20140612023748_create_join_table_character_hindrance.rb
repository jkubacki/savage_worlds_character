class CreateJoinTableCharacterHindrance < ActiveRecord::Migration
  def change
    create_join_table :characters, :hindrances do |t|
      # t.index [:character_id, :hindrance_id]
      # t.index [:hindrance_id, :character_id]
    end
  end
end
