class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @carts = current_user.carts.where(ordered: false)
    $cart_count = @carts.size
  end
end
