puts "Clearing database ..."
Restaurant.destroy_all

puts "Creating restaurants ..."
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  Restaurant.create(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORIES.sample
  )
end
