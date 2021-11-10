puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "123456789", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "123456780", category: "italian" }
review11 = { rating: 5, restaurant_id: 1, content: "Amazing"}
review12 = { rating: 3, restaurant_id: 1, content: "Aaight"}
review21 = { rating: 5, restaurant_id: 2, content: "Amazing"}
review22 = { rating: 3, restaurant_id: 2, content: "Aaight"}


[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
[ review11, review12, review21, review22 ].each do |attributes|
  review = Review.create!(attributes)
  puts "Created #{review}"
end
puts "Finished!"
