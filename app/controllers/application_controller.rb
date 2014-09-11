class ApplicationController < ActionController::Base
	before_filter :require_login  
	private 
	def not_authenticated 
	      redirect_to login_path, alert: "Por Favor Inicie Sesión" 
	end 
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = current_user.name+ "Acceso Denegado."
	  redirect_to root_url
  end
end
