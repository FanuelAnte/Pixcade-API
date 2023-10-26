class User < ApplicationRecord
    has_one_attached :profile_image
    has_many :games
    has_many :reviews
    has_many :ratings
    has_many :wishlist_items

    validates :user_name, :email, presence: true , uniqueness: true
    validates : first_name, :last_name, :password_digest, :date_of_birth, :user_type, :jit, presence: true
end
