require 'jwt'
class UsersController < ApplicationController
  include Common

  def sign_in
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      token = JWT.encode({ user_id: user.id, user_email: user.email, user_name: user.user_name }, nil)
      render json: { success: true, jwt: token, user: user }
    else
      render json: { success: false, errors: ['Invalid username or password !'] }, status: :unprocessable_entity
    end
  end

  def create
    super do
      user.profile_picture.attach(params[:profile_picture]) if params [:profile_picture].present?
    end
  end

  private

  def model_params
    params.require(:user).permit(:first_name, :profile_image, :last_name, :email, :password, :user_name, :date_of_birth, :user_type, :profile_picture)
  end
end
