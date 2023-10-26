require 'rails_helper'

RSpec.describe Game, type: :model do
  attribs = [
    { title: %i[presence uniqueness] },
    { description: %i[presence] },
    { genre: %i[presence] },
    { price: %i[presence] },
    { discount: %i[presence] },
    { release_date: %i[presence] },
    { status: %i[presence] },
    { game_tags: :have_many },
    { game_platforms: :have_many },
    { reviews: :have_many },
    { ratings: :have_many },
    { wishlist_items: :have_many },
  ]
  include_examples('model_shared_spec', :game, attribs)

  describe 'Banner' do
    let(:game) { FactoryBot.create(:game) }

    before do
      image_path = Rails.root.join('spec', 'fixtures', 'profile_pic.jpg')
      game.banner.attach(io: File.open(image_path), filename: 'profile_image.jpg', content_type: 'image/jpeg')
    end

    it 'can have a profile image attached' do
      expect(game.banner).to be_attached
    end
  end

  describe 'Banner' do
    let(:game) { FactoryBot.create(:game) }

    before do
      image_path = Rails.root.join('spec', 'fixtures', 'profile_pic.jpg')
      game.banner.attach(io: File.open(image_path), filename: 'profile_image.jpg', content_type: 'image/jpeg')
    end

    it 'can have a banner attached' do
      expect(game.banner).to be_attached
    end
  end

  describe 'Images' do
    let(:game) { FactoryBot.create(:game) }

    before do
      image_path = Rails.root.join('spec', 'fixtures', 'profile_pic.jpg')
      game.images.attach(io: File.open(image_path), filename: 'profile_image.jpg', content_type: 'image/jpeg')
    end

    it 'can have images attached' do
      expect(game.images).to be_attached
    end
  end
end
