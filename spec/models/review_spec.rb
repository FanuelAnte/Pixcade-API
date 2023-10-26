require 'rails_helper'

RSpec.describe Review, type: :model do
  attribs= [
  {review_text: %i[presence]},
  {review_date: %i[presence]}
  ]
  include_examples("model_shared_spec", :review, attribs)
  it {should belong_to(:game)}
  it {should belong_to(:user)}
end
