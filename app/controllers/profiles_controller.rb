class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @recent_announcements = Announcement.where(user: @user).order(created_at: :desc).take(3) 
  end
end
