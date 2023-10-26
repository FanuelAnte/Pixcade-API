class GamesController < ApplicationController
  include Common

  private

  def model_params
    params.require(:game).permit(:title, :description, :genre, :price, :ddiscount, :release_date, :status, :user_id)
  end
end
