Course.destroy_all

100.times do
  course = Course.create(
    name: Faker::App.name,
    catalog: Faker::Lorem.characters(8).upcase,
    description: Faker::Company.catch_phrase
  )
end
