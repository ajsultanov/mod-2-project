class ApplicationController < ActionController::Base
  before_Action :authorized
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def logged_in?
    !!current_user
  end

  def authorized?
    redirect_to :login unless logged_in?
  end
end
