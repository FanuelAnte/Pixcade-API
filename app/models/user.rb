class User < ApplicationRecord
    has_one_attached :profile_image
    has_many :games
    has_many :reviews
    has_many :ratings
    has_many :wishlist_items

end
