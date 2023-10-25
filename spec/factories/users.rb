FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    user_name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    date_of_birth { "2023-10-25" }
    user_type { "MyString" }
    jit { "MyString" }
  end
end
