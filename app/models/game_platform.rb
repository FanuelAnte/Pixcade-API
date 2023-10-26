class GamePlatform < ApplicationRecord
  belongs_to :game
  validates :platform, presence: true
end
