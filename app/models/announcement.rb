class Announcement < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  belongs_to :user

  def preview
    truncate(self.content, length: 300)
  end
end
