require 'rails_helper'

RSpec.describe Review, type: :model do
  attribs= [
  {user: %i[presence belong_to]},
  {game: %i[presence belong_to]},
  {review_text: %i[presence]},
  {review_date: %i[presence]}
  ]
  include_examples ("model_shared_spec", :review, attribs)

end
