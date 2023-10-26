class ReviewsController < ApplicationController
    include Common

    private
    
    def model_params
        params.require(:payload).permit(:review_text, :review_date, :game_id, :user_id)
    end
end
