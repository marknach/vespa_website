class PagesController < ApplicationController
  def index
    @recent_posts = Post.order(created_at: :desc).take(3) 
    @upcoming_events = Event.all
  end

end
