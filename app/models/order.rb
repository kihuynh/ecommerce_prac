class Order < ApplicationRecord
  has_many :order_items
  # test
  has_many :products, through: :order_items
end
