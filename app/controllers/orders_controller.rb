class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(cart_id: params[:cart_id], user: current_user, bike_id: params[:bike_id])
    @order.save
    redirect_to orders_path
  end
end
