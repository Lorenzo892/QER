class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :current_user

  def authorize_user
    unless current_user
      flash[:message] = 'Please log in or register to access this page'
      redirect_to root_path
    end
  end

  def admin_only
    unless current_user && current_user.role == "admin"
      flash[:access_denied] = "Access denied. You must be admin in this page."
      redirect_to root_path
    end
  end
end
