class PagesController < ApplicationController
  def index
    @recent_posts = Post.order(created_at: :desc).take(3) 
  end
end
