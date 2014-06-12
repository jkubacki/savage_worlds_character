class CreateReqSkills < ActiveRecord::Migration
  def change
    create_table :req_skills do |t|
      t.belongs_to :skill, index: true

      t.timestamps
    end
  end
end
