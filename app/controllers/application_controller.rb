class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :ensure_login
  helper_method :logged_in?, :current_parent

  protected
  	def ensure_login
  		redirect_to login_path unless session[:parent_id]
  	end

  	def logged_in?
  		session[:parent_id]
  	end

  	def current_parent
  		@current_parent ||= Parent.find(session[:parent_id])
  	end
end
