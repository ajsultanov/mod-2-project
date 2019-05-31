class ApplicationController < ActionController::Base
  before_action :authorized?, :users
  helper_method :current_user, :logged_in?, :copy

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def logged_in?
    !!current_user
  end

  def authorized?
    redirect_to :login unless logged_in?
  end

  def copy
    num = rand(0..15)
    ary = [
      'Grim Satan',
      'Giant Arms',
      'Rag Mantis',
      'Tin Rag Sam',
      'Rat Sin Mag',
      "Martin Gas",
      "Mr. Against",
      "Gain Smart",
      "Am Staring",
      "Rims A Tang",
      "A Tram Sign",
      "Sgt. Armani",
      "Gratis Man",
      "Sting A Ram",
      "Martians G",
      "Mint Ragas"
    ]
    greeting = ary[num]
  end

  private

  def users
    @users = User.all
  end
end
