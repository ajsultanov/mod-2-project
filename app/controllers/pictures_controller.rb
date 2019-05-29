class PicturesController < ApplicationController
  skip_before_action :authorized?, only: :index


  def index
    @pictures = Picture.all
    @pop_tags = Tag.most_popular
    @trend_tag = Tag.trending
  end

  def new
    redirect_to user_path(current_user)
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user = current_user

    names = params[:tag][:names].split(' ')
    names.each do |c|
      @picture.tags << Tag.find_or_create_by(name: c.capitalize)
    end


    if @picture.save
      redirect_to @picture
    else
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to user_path(current_user)
  end

  def show
    @picture = Picture.find(params[:id])
    @user = @picture.user
    @tags = @picture.tags
    @comments = @picture.comments
    @comment = Comment.new(picture_id: @picture.id, user_id: current_user.id)
  end

  private

  def picture_params
    params.require(:picture).permit(:url, :title, tag_attributes: :name)
  end
end
