class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
end

# has_many
# has_and_belongs_to_many
