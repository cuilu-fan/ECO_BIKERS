class AddDefaultShoppingCartToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :shopping_cart, foreign_key: true

    # Find all existing users and create a default shopping cart for each
    User.find_each(&:create_shopping_cart)
  end
end
