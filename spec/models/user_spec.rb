require 'rails_helper'

RSpec.describe User, type: :model do
  attribs = [
    {first_name: %i[presence]},
    {last_name_name: %i[presence]},
    {user_name: %i[presence uniqueness]},
    {email: %i[presence uniqueness]},
    {password_digest: %i[presence]},
    {date_of_birth: %i[presence]},
    {user_type: %i[presence]},
    {jit: %i[presence]}
  ]
include_examples('model_shared_spec', :user , attribs)

it{is_expected.to(have_many(:games))}
it{is_expected.to(have_many(:reviews))}
it{is_expected.to(have_many(:ratings))}
it{is_expected.to(have_many(:wishlist_items))}

it {should have_one_attached(:profile_image) }


end
