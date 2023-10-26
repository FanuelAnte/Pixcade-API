require 'rails_helper'

RSpec.describe "Ratings", type: :request do
  include_examples("request_shared_spec", "ratings", 6)
  
  let(:valid_attributes) do
    {
      rating_value: 2,
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
