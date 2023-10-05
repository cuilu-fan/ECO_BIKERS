class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def create
    @cart = Cart.new(bike_id: params[:id], user: current_user)
    @cart.save
    redirect_to carts_path
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy!
    redirect_to carts_path
  end
end
