class UsersController < ApplicationController
  include Common

  private

  def model_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :user_name, :date_of_birth, :user_type)
  end
end
