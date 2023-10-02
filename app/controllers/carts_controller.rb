class CartsController < ApplicationController
  def show
    puts "Inside show action" # Add this line to check if the action is executed
    if current_user&.cart
      @cart = current_user.cart
      @cart_items = @cart.cart_items
    else
      # Redirect the user to the sign-in page
      # redirect_to new_user_session_path
      # Or create a new cart for the user
      # cart = Cart.create(user: current_user)
      # @cart = cart
      # @cart_items = []
      # or anything else we want
    end
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
    @cart = current_user.cart

    # Perform any necessary cleanup or additional operations
    @cart.destroy

    # Redirect to the appropriate page
    redirect_to root_path
  end
end
