class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :thing

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def logged_in?
    current_user != nil
  end
end
