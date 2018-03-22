class Admin::BaseController < ActionController::Base
  # use an admin-specific layout instead of the main application layout
  # layout "admin"

  # all child controllers will automatically enforce access to admins only
  before_action :require_admin

  def require_admin
    unless current_user.is_admin?
      redirect_to root_path
    end
  end
end