class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :destroy]
  before_action :set_user, only: [:show, :create]

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
    @sessions = Session.new
  end

  def create
    @session = Session.new(pp_params)
    @session.user = @user

    if @session.valid?
      @session.save
      redirect_to sessions_path
    end
  end

  def destroy
    @session.destroy
    redirect_to sessions_path
  end


  private

  def set_session
    @session = Session.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def pp_params
    params.require(:session).permit(:title, :spot, :description, :date, :photo)
  end
end
