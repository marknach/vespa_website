class RemoveHostFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :host, :string
  end
end
