class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :review_text, :review_date, presence: true
  
end
