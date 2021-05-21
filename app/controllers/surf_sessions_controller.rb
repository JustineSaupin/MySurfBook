class SurfSessionsController < ApplicationController
  before_action :set_surf_session, except: [:index, :new, :create]
  before_action :set_user

  def index
    @surf_sessions = SurfSession.where(user_id: @user)
  end

  def show
  end

  def new
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
    redirect_to surf_sessions_path
  end

  private

  def set_surf_session
    @surf_session = SurfSession.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def ss_params
    params.require(:surf_session).permit(:title, :spot, :description, :date, :spot_type, :tide, :rating, photos: [])
  end
end
