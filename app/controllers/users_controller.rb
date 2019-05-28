class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:current_user_id] = @user.id
      flash[:notice] = "You have succesfully signed up!"
      redirect_to @user
    else
      flash[:notice] = "There was an issue. Please try again."
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    # @user = User.find(params[:id])
    # @user.destroy
    # flash[:notice] = "Deleted your dude."
    # redirect_to users_path
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
