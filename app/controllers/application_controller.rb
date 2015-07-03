class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  # protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.murrobi?
      murrobi_root_path
    elsif current_user.admin?
      manage_root_path
    end
  end
end
