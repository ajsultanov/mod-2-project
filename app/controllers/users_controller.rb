class UsersController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create]

  def index
    redirect_to user_path(current_user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user] = @user.id
      flash[:notice] = "You have succesfully signed up!"
      redirect_to @user
    else
      flash[:notice] = "There was an issue signing up. Please try again."
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Account Information Updated!"
      redirect_to user_path(@user)
    else
      render edit_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Deleted."
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
