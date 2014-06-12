class CreateReqRanks < ActiveRecord::Migration
  def change
    create_table :req_ranks do |t|
      t.belongs_to :rank, index: true

      t.timestamps
    end
  end
end
