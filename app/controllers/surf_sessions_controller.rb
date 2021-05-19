class SurfSessionsController < ApplicationController
  before_action :set_surf_session, only: [:show, :destroy]
  before_action :set_user, only: [:show, :create]

  def index
    @surf_sessions = SurfSession.all
  end

  def show
  end

  def new
    @surf_sessions = SurfSession.new
  end

  def create
    @surf_session = SurfSession.new(pp_params)
    @surf_session.user = @user

    if @surf_session.valid?
      @surf_session.save
      redirect_to surf_sessions_path
    end
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

  def pp_params
    params.require(:surf_session).permit(:title, :spot, :description, :date, :photo)
  end
end
