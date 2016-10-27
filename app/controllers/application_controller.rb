class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:given_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:family_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:given_name])
    #【課題9-(2)】
    # deeviseで管理されているモデルにカラムを追加した場合、追加したカラム名を、deviseのストロングパラメータに追加しないといいけない<br>
    # `application_controller.rb`に独自のメソッドで定義しないといけない
    devise_parameter_sanitizer.permit(:sign_up, keys:[:image_url])
  end
end
