class AddUserIdToSummoner < ActiveRecord::Migration
  def change
    add_column :summoners, :user_id, :integer
  end
end
