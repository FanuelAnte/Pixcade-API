require 'rails_helper'

RSpec.describe GamePlatform, type: :model do
  attribs = [
    {game: %i[presence belong_to]},
    {platform: %i[presence]}
  ]

include_examples ("model_shared_spec", :game_platform attribs)
end
