class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!
  before_action :set_title

  add_flash_types :success, :danger, :info
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:danger] = "You are not authorized to perform this action"
    redirect_to root_path
  end

  def set_title
    @page_title = "Report Card"
  end
end
