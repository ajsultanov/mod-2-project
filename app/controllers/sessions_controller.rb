class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    # we are getting at least to here, according to byebug
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user] = @user.id
      redirect_to @user
    else
      flash[:notice] = "There was an issue logging in. Please try again."
      render :new
    end
  end

  def destroy
    session[:user] = nil
    flash[:notice] = 'You have been logged out.'
    redirect_to :login
  end
end
