class RatingsController < ApplicationController

    include Common

    private
    
    def model_params
        params.require(:payload).permit(:rating_value, :game_id, :user_id)
    end
end
