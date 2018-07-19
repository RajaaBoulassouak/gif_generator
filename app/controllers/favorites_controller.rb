class FavoritesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @favorites = @user.gifs
  end

  def create
  end

end
