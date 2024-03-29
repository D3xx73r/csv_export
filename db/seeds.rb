# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  10.times do
    Client.create(
      name: Faker::Name.name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      gender: %w(H M).sample,
    )
  end
end
