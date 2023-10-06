class BikesController < ApplicationController
  def index
    @bikes = Bike.all.where(purchased: false)
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, photos: [])
  end
end
