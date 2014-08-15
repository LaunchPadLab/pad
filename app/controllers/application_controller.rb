class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_company
    @current_company ||= current_user.company if current_user
  end

  def after_sign_in_path_for(resource)
  	current_company
  end

end
