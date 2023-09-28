class Cart < ApplicationRecord
  belongs_to :bike
  belongs_to :order
  belongs_to :user
end
