class PagesController < ApplicationController
  def home
    @recent_announcements = Announcement.includes(:user).order(created_at: :desc).take(3) 
    @upcoming_events = Event.where(date: Date.today..1.month.from_now) 
  end

  def about_us
  end
end
