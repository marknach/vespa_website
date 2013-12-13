class CreateSummoners < ActiveRecord::Migration
  def change
    create_table :summoners do |t|
      t.string :name
      t.integer :profileIconId
      t.integer :revisionDate, limit: 8
      t.date :revisionDateStr
      t.integer :summonerLevel, limit: 8

      t.timestamps
    end
  end
end
