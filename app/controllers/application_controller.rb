class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role])
  end
  
  
  # def after_sign_in_path_for(resource)
  #   sign_in_url = new_user_session_url
  #   if request.referer == sign_in_url && user.role == 0
  #     root_path
  #   else
  #     user_path
  #   end
  # end
  
end
