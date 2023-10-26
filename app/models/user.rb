class User < ApplicationRecord
    has_secure_password
    has_one_attached :profile_image
    has_many :games
    has_many :reviews
    has_many :ratings
    has_many :wishlist_items


    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :date_of_birth, presence: true
    validates :user_type, presence: true, inclusion: { in: ['developer', 'client'] }

end
