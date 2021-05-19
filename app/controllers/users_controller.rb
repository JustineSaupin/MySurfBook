class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :create]

  def show
  end


  private

  def set_user
    @user = current_user
  end
end
