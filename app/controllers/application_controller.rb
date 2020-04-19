class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end



# protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # ログイン済みユーザーのみアクセスが可能
  # before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end

  # private 
  # def after_sign_in_path_for(resource)
  #   root_path # ログイン後に遷移するpathを設定
  # end
 
  # def after_sign_out_path_for(resource)
  #   root_path # ログアウト後に遷移するpathを設定
  # end