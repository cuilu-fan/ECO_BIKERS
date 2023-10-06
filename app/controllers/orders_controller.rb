class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def create
    @order = Order.new(cart_id: params[:cart_id], user: current_user, bike_id: params[:bike_id])
    @order.save
    bike = Bike.find(params[:bike_id])
    bike.purchased = true
    bike.save
    redirect_to orders_path
  end
end
