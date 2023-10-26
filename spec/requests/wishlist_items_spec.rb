require 'rails_helper'

RSpec.describe "WishlistItems", type: :request do
  
  include_examples("request_shared_spec", "wishlist_items", 5)
  
  let(:valid_attributes) do
    {
      user_id: create(:user).id,
      game_id: create(:game).id
    }
  end
  let(:invalid_attributes) do
    {
      game_id: nil
    }
  end

  let(:new_attributes) do
    {
      game_id: create(:game).id
    }
  end

end
