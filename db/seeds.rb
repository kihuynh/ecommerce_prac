Product.destroy_all

20.times do |index|
  product = Product.create!(
      name: Faker::Commerce.product_name,
      price: Faker::Commerce.price
  )
end

p "created #{Product.count} products"