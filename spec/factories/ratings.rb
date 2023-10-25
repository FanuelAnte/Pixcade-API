FactoryBot.define do
  factory :rating do
    user
    game
    rating_value { 1.5 }
  end
end
