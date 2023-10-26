require 'rails_helper'

RSpec.describe Rating, type: :model do
  attribs=[
    {rating_value: %i[presence]}

  ]
  include_examples("model_shared_spec", :rating, attribs)
  it {should belong_to(:game)}
  it {should belong_to(:user)}
end
