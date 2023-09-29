class Bike < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :orders
  has_many :carts, dependent: :destroy
  has_many_attached :photos
end
