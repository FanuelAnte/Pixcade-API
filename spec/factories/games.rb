FactoryBot.define do
  factory :game do
    title { Faker::Name.name }
    description { "MyText" }
    price { 1.5 }
    discount { 1 }
    release_date { "2023-10-25" }
    status { "MyString" }
    genre { "MyString" }
    user
  end
end
