require 'rails_helper'

RSpec.describe Rating, type: :model do
  attribs=[
    {user: %i[presence belong_to]},
    {game: %i[presence belong_to]},
    {rating_value: %i[presence]}

  ]
  include_examples ("model_shared_spec", :rating , attribs)

end
