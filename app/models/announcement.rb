class Announcement < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
	include Rails.application.routes.url_helpers
  belongs_to :user

	@@md

  def preview
	  read_more = "[... (read more)](#{announcement_path(self)})"
    Markdown.new(truncate(self.content, length: 300, separator: "\n", omission: read_more)).to_html
  end
	
	def html_content
		Markdown.new(self.content).to_html
	end
end
