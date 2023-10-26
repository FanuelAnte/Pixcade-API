require 'rails_helper'

RSpec.describe GameTag, type: :model do
  attribs =[
    {tag: %i[presence]}
  ]
  include_examples("model_shared_spec", :game_tag, attribs)
  
  it {should belong_to(:game)}
  
end
