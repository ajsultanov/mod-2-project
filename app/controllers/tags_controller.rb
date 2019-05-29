class TagsController < ApplicationController

  def index
    @tags = Tag.all
    # I don't actually want this to be an options, just for development
  end

  def destroy
    @tag = Tag.find(params[:id])
    # I forget
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
