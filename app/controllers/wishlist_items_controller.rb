class WishlistItemsController < ApplicationController
    include Common

    private
    
    def model_params
        params.require(:payload).permit(:game_id, :user_id)
    end
end
