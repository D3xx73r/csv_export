FactoryGirl.define do
  factory :client do
    name Faker::Name.name
    phone_number Faker::PhoneNumber.phone_number
    email Faker::Internet.email
    gender %w(H M).sample
  end
end
