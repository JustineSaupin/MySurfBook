class SessionsController < ApplicationController

def index
    @sessions = Session.all
  end

  def show

    @session = Session.find(params[:id])
    @user = current_user
  end

  def new
    @sessions = Session.new
  end

  def create
    @session = Session.new(pp_params)
    @session.user = current_user
    @session.save
    redirect_to sessions_path
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy

    redirect_to sessions_path
  end


  private

  def pp_params
    params.require(:session).permit(:title, :spot, :description, :date)
  end
end
