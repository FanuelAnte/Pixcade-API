class GameTagsController < ApplicationController
    include Common

    private
    
    def model_params
        params.require(:payload).permit(:tag, :game_id)
    end
end
