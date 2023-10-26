class GamesController < ApplicationController
  include Common


  def create
    super do
      game.banner.attach(params[:banner]) if params [:banner].present?
      game.images.attach(params[:images]) if params [:images].present?
    end
  end


  private

  def model_params
    params.require(:payload).permit(:title, :description, :genre, :price, :discount, :release_date, :status, :user_id, images: [])
  end
end
