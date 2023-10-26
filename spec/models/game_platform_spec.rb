require 'rails_helper'

RSpec.describe GamePlatform, type: :model do
  attribs = [
    {platform: %i[presence]}
  ]

  include_examples("model_shared_spec", :game_platform, attribs)

  it {should belong_to(:game)}
end
