class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :host
      t.string :location
      t.datetime :date
      t.text :info

      t.timestamps
    end
  end
end
