class Cart < ApplicationRecord
  belongs_to :bike
  belongs_to :order
  belongs_to :user

  has_many :cart_items

  def add_product(product_id, quantity)
    cart_items.create(product_id, quantity)
  end
end
