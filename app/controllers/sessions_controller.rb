class SessionsController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create, :destroy]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user] = @user.id
      flash[:notice] = greeting
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

  def greeting
    num = rand(0..5)
    ary = [
      'What\'s up',
      'How\'s it going?',
      'Randomly generated greeting #3',
      'What\'s new?',
      'Hey',
      "Welcome back, #{@user.username.capitalize}"
    ]
    greeting = ary[num]
  end
end
