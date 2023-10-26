FactoryBot.define do
  factory :review do
    user
    game
    review_text { 'MyText' }
    review_date { '2023-10-26' }
  end
end
