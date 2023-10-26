class GameTag < ApplicationRecord
  belongs_to :game
  validates :tag, presence: true
end
