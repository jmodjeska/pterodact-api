Course.destroy_all
User.destroy_all

10.times do
  course = Course.create(
    name: Faker::App.name,
    catalog: Faker::Lorem.characters(8).upcase,
    description: Faker::Company.catch_phrase
  )
end

User.create!(
        name: 'Pterodactyl Jones',
        email: 'pterodact@example.com',
        password: 'pterodact',
        password_confirmation: 'pterodact'
)
