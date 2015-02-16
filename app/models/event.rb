class Event < ActiveRecord::Base
	def html_content
		Markdown.new(self.info).to_html
	end
end
