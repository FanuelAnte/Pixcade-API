class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :review_date, :review_text, presence: true
end
