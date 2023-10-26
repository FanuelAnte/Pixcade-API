require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  include_examples("request_shared_spec", "reviews", 7)
  
  let(:valid_attributes) do
    {
      review_date: "2-2-2022",
      review_text: "Text",
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
