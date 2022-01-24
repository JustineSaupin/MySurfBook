class SurfSessionsController < ApplicationController
  before_action :set_surf_session, except: [:index, :archives, :new, :create]
  before_action :set_user
  before_action :set_all_surf_sessions, only: [:index, :archives]

  def index
    @navbar_style = :logo_menu
    @current_year_surf_sessions = @surf_sessions.from_year(Time.now)
    @last_surf_sessions = @current_year_surf_sessions.first(3)
    @spots_count = @current_year_surf_sessions.pluck(:spot).uniq.size
    @users = User.all
  end

  def archives
    @navbar_style = :logo_menu
    @archived_surf_sessions = @surf_sessions.from_year(Time.now)
  end

  def show
  end

  def new
    @navbar_style = :logo_back
    @surf_session = SurfSession.new
  end

  def create
    @surf_session = SurfSession.new(ss_params)
    @surf_session.user = @user

    if @surf_session.valid?
      @surf_session.save
      redirect_to surf_sessions_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def edit
  end

  def update
    @surf_session.update(ss_params)
    redirect_to surf_sessions_path(@surf_session)
  end

  def destroy
    @surf_session.destroy
    redirect_to surf_sessions_path(@surf_session)
  end

  private

  def set_surf_session
    @surf_session = SurfSession.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def ss_params
    params.require(:surf_session).permit(:title, :spot, :description, :date, :spot_type, :tide, :wave, :wind, :rating, photos: [])
  end

  def set_all_surf_sessions
    @surf_sessions = SurfSession.where(user_id: @user).order('date DESC')
  end
end
