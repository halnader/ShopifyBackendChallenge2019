20.times do
  Product.create({
      title: Faker::Commerce.product_name,
      price: Faker::Commerce.price,
      inventory_count: Faker::Number.between(0, 15)
    })
end
