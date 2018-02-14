puts "Clearing database ..."
Restaurant.destroy_all

puts "Creating restaurants ..."

10.times do
  Restaurant.create!(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
end
