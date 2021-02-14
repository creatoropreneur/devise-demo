class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to unauthenticated_root_path, :alert => exception.message
  end
end