require 'rails_helper'

RSpec.describe WishlistItem, type: :model do
# attribs =[
# ]
# include_examples("model_shared_spec", :wishlist_items, attribs)

  it {should belong_to(:game)}
  it {should belong_to(:user)}
end
