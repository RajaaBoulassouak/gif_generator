class Admin::GifsController < Admin::BaseController

  def new
    @gif = Gif.new
  end

  def destroy
   gif = Gif.find(params[:id])
   gif.destroy
   redirect_to gifs_path
  end
  
end
