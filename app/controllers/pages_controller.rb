class PagesController < ApplicationController
  def index
    @recent_announcements = Announcement.includes(:user).order(created_at: :desc).take(3) 
    @upcoming_events = Event.where(date: Date.today..1.month.from_now) 
  end
 

end
