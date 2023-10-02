class CartsController < ApplicationController
  def show
    puts "Inside show action"
    return unless current_user&.cart

    @cart = current_user.cart
    @cart_items = @cart.cart_items
  end

  def update
    @cart = current_user.cart
    product_id = params[:product_id]
    quantity = params[:quantity].to_i

    # Add the product to the cart with the specified quantity
    @cart.add_product(product_id, quantity)

    # Redirect to the cart show page or any other appropriate page
    redirect_to cart_path
  end

  def destroy
    puts "Inside destroy action"
    @cart = current_user.cart

    # Perform any necessary cleanup or additional operations
    @cart.destroy

    redirect_to root_path
  end
end
