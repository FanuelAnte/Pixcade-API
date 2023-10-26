require 'rails_helper'

RSpec.describe WishlistItem, type: :model do
attribs =[
  {user: %i[presence belong_to]},
  {game: %i[presence belong_to]}
]
include_examples('model_shared_spec', :wishlist_item , attribs)

end
