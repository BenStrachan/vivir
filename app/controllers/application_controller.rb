class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_business

def current_business
  @current_business ||= current_user.try(:business)
end


  protected
  def after_sign_in_path_for(resource)
    resource && resource.admin? ? admin_dashboards_path : app_dashboards_path
  end
end
