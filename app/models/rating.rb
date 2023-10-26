class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :rating_value, presence: true
end
