class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :card_rank, index: true
      t.belongs_to :card_suite, index: true

      t.timestamps
    end
  end
end
