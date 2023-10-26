require 'rails_helper'

RSpec.describe Game, type: :model do
  attribs=[
    {title: %i[presence uniqueness]},
    {description: %i[presence]},
    {price: %i[presence]},
    {discount: %i[presence]},
    {release_date: %i[presence]},
    {status: %i[presence]},
    {genre: %i[presence]},
  ]
  include_examples("model_shared_spec", :game, attribs)

it{is_expected.to(have_many(:game_tags))}
it{is_expected.to(have_many(:game_platforms))}
it{is_expected.to(have_many(:reviews))}
it{is_expected.to(have_many(:ratings))}
it{is_expected.to(have_many(:wishlist_items))}
it{should have_one_attached(:banner)}
it{should have_many_attached(:screenshots)}
it{should belong_to(:user)}

end
