require 'rails_helper'

RSpec.describe "GameTags", type: :request do
  include_examples("request_shared_spec", "game_tags", 5)
  
  let(:valid_attributes) do
    {
      tag: "action",
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
