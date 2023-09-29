class BikesController < ApplicationController
  def index
    @bikes = Bike.all.where(params[:category_id])
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, photos: [])
  end
end
