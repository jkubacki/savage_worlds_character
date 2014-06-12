class CreateReqCharacterTypes < ActiveRecord::Migration
  def change
    create_table :req_character_types do |t|
      t.belongs_to :character_type, index: true

      t.timestamps
    end
  end
end
