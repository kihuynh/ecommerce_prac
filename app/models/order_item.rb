class OrderItem < ApplicationRecord
  belongs_to :orders
  belongs_to :products
end

# has_many
# has_and_belongs_to_many