class GamePlatformsController < ApplicationController
    include Common

    private
    
    def model_params
        params.require(:payload).permit(:platform, :game_id)
    end
end
