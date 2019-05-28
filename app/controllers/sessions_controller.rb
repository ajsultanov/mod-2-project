class SessionsController < ApplicationController

  def new
  end

  def create
    # we are getting at least to here, according to byebug
    @user = User.find_by(username: params[:session][:username])
    byebug
  end

  def destroy
    session[:user] = nil
    redirect_to :login
  end
end
