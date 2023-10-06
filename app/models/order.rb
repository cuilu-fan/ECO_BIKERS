class Order < ApplicationRecord
  belongs_to :user
  has_many :bikes
  belongs_to :cart
end
