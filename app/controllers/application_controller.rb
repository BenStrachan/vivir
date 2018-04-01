class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_business

  def current_business
    @current_business ||= current_user.try(:business)
  end

  def load_ransack_params(cookie_key)
    cookies[cookie_key] = params[:q].to_json if params[:q]
    params[:q] = params[:q].presence || JSON.load(cookies[cookie_key])
  end
  


  protected
  def after_sign_in_path_for(resource)
    resource && resource.admin? ? admin_dashboards_path : app_dashboards_path
  end
end
