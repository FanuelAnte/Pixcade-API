require 'rails_helper'

RSpec.describe Game, type: :model do
  attribs = [
    { title: %i[presence uniqueness] },
    { description: %i[presence] },
    { genre: %i[presence] },
    { price: %i[presence] },
    { discount: %i[presence] },
    { release_date: %i[presence] },
    { status: %i[presence] },
    { game_tags: :have_many },
    { game_platforms: :have_many },
    { reviews: :have_many },
    { ratings: :have_many },
    { wishlist_items: :have_many },
  ]
  include_examples('model_shared_spec', :game, attribs)
end
