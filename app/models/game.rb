class Game < ApplicationRecord
  has_one_attached :banner
  has_many_attached :screenshots
  belongs_to :user
  has_many :game_tags
  has_many :game_platforms
  has_many :reviews
  has_many :ratings
  has_many :wishlist_items
  has_many_attached :images
  has_one_attached :banner

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :price, presence: true
  validates :discount, presence: true
  validates :release_date, presence: true
  validates :status, presence: true
end
