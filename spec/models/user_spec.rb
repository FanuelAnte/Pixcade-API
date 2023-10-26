require 'rails_helper'

RSpec.describe User, type: :model do
  attribs = [
    { first_name: %i[presence] },
    { last_name: %i[presence] },
    { user_name: %i[presence uniqueness] },
    { email: %i[presence uniqueness] },
    { date_of_birth: %i[presence] },
    { user_type: %i[presence] }
  ]
  include_examples('model_shared_spec', :user, attribs)

  it { is_expected.to(have_many(:reviews)) }
  it { is_expected.to(have_many(:ratings)) }
  it { is_expected.to(have_many(:games)) }
  it { is_expected.to(have_many(:wishlist_items)) }

  describe 'profile Image' do
    let(:user) { FactoryBot.create(:user) }

    before do
      image_path = Rails.root.join('spec', 'fixtures', 'profile_pic.jpg')
      user.profile_image.attach(io: File.open(image_path), filename: 'profile_image.jpg', content_type: 'image/jpeg')
    end

    it 'can have a profile image attached' do
      expect(user.profile_image).to be_attached
    end
  end
end
