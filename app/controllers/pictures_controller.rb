class PicturesController < ApplicationController
  skip_before_action :authorized?, only: :index


  def index
    @pictures = Picture.all
  end

  def new

  end

  def create

  end

  def destroy

  end

  def show
    @picture = Picture.find(params[:id])
    @user = @picture.user
  end
end
