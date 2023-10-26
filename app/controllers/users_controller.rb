require 'jwt'
class UsersController < ApplicationController
  include Common

  def sign_in
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id, user_email: user.email, user_name: user.user_name }, nil)
      render json: { success: true, jwt: token, user: user }
    else
      render json: { success: false, errors: ['Invalid username or password !'] }, status: :unprocessable_entity
    end
  end

  private

  def model_params
    params.require(:user).permit(:first_name, :profile_image, :last_name, :email, :password, :user_name, :date_of_birth, :user_type)
  end
end
