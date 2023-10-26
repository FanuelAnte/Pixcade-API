require 'rails_helper'

RSpec.describe GameTag, type: :model do
  attribs =[
    {game: %i[presence belong_to]},
    {tag: %i[presence]}
  ]
include_examples ("model_shared_spec", :game_tag , attribs)
  
end
