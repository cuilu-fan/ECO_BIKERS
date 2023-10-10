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
    cart = Cart.find(params[:cart_id])
    cart.ordered = true
    if cart.save
      $cart_count = 0
      redirect_to orders_path, notice: "Congratulations, you have ordered your new bike, you're now an Eco Biker"
    else
      redirect_to cart_path(cart)
    end
  end
end
