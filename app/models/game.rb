class Game < ApplicationRecord
  has_one_attached :banner
  has_many_attached :screenshots
  belongs_to :user
  has_many :game_tags
  has_many :game_platforms
  has_many :reviews
  has_many :ratings
  has_many :wishlist_items

  validates :title, presence: true , uniqueness: true
  validates :description, :price, :discount, :release_date, :status, :genre, presence: true
end
