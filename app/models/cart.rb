class Cart < ApplicationRecord
  belongs_to :bike
  belongs_to :order
end
