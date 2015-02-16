class Announcement < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  belongs_to :user

	@@md

  def preview
    Markdown.new(truncate(self.content, length: 300, separator: ' ')).to_html
  end
	
	def html_content
		Markdown.new(self.content).to_html
	end
end
