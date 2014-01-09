class RenamePostToAnnouncement < ActiveRecord::Migration
  def change
    rename_table :posts, :announcements
  end
end
