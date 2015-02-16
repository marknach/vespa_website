class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :create
  before_action :check_creator!, only: [:delete, :update]
  # before_action :is_admin?, only: :create
  # GET /announcements
  # GET /announcements.json
  def index
    @announcements = Announcement.order(created_at: :desc)
  end

  # GET /announcements/1
  # GET /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements
  # POST /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.user_id = current_user.id
    respond_to do |format|
      if @announcement.save
        format.html { redirect_to @announcement, notice: 'Announcement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @announcement }
      else
        format.html { render action: 'new' }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to @announcement, notice: 'Announcement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end
    def check_creator!
      redirect_to(root_url) unless (current_user == @announcement.user) || current_user.is_admin?
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def announcement_params
      params.require(:announcement).permit(:user_id, :title, :content)
    end

    def is_admin?
      flash[:warning] = "Insufficient Privledges"
      redirect_to(root_url) unless current_user.try(:is_admin?)
    end
end
