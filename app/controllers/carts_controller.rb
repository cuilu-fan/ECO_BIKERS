class CartsController < ApplicationController

  def index
    @carts = Cart.all
  end

  def create
    @cart = Cart.new(bike_id: params[:id], user: current_user)
    @cart.save
  end
end
