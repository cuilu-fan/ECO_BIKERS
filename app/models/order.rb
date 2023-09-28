class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_many :carts, dependent: :destroy
end
