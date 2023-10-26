FactoryBot.define do
  factory :user do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    user_name { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest { 'password123' }
    date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 65) }
    user_type { 'developer' }
  end
end
