class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @favorites = Favorite.where(user_id: params[:id])
    @gifs = @favorites.map do |favorite|
      Gif.find_by(id: favorite.gif_id)
    end
    # Favorite.find_by_gif_id(:id)
    # @favorites = @user.gifs
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
