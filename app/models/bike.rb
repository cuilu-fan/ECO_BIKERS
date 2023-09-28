class Bike < ApplicationRecord
  belongs_to :category
  has_many :order
  has_many :cart, dependent: :destroy
end
