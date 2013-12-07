class ChangeDataTypeForEventDate < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.change :date, :date
    end
  end
  def self.down
    change_table :events do |t|
      t.change :date, :datetime
    end
  end
end
