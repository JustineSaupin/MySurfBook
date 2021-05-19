class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def after_sign_in_path_for(resource)
  #   #binding.pry
  #   user_path(current_user) # your path
  # end

end
