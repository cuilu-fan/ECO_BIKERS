class RemoveOrderFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :carts, :order
  end
end
