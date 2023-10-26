class GamesController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:title, :description, :genre, :price, :discount, :release_date, :status, :user_id)
  end
end
