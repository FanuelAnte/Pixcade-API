require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'POST /users' do
    context 'with valid parameters' do
      let(:valid_user_params) do
        {
          user: {
            first_name: 'John',
            last_name: 'Doe',
            user_name: 'johndoe',
            email: 'johndoe@example.com',
            password: 'password123',
            date_of_birth: '1990-01-01',
            user_type: 'developer'
          }
        }
      end

      it 'creates a new user' do
        post '/users', params: valid_user_params
        expect(response).to have_http_status(201)
      end

      it 'returns a success message' do
        post '/users', params: valid_user_params
        result = JSON.parse(response.body)
        expect(result).to be_truthy
      end
    end

    context 'with invalid parameters' do
      let(:invalid_user_params) do
        {
          user: {
            first_name: nil,
            last_name: 'Doe',
            user_name: 'johndoe',
            email: 'johndoe@example.com',
            password: 'password123',
            date_of_birth: '1990-01-01',
            user_type: 'developer'
          }
        }
      end

      it 'does not create a new user' do
        post '/users', params: invalid_user_params
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns validation errors' do
        post '/users', params: invalid_user_params
        result = JSON.parse(response.body)
        expect(result).to have_key('error')
      end
    end
  end

  # describe "POST #sign_in" do
  #   before(:each) do
  #     @user = create(:user, email: "user@example.com", password: "password123")
  #   end

  #   context "with valid credentials" do
  #     let(:valid_sign_in_params) do
  #       {
  #         email: "user@example.com",
  #         password: "password123"
  #       }
  #     end

  #     it "returns a success response with JWT token" do
  #       post "/sign_in", params: valid_sign_in_params
  #       expect(response).to have_http_status(:success)

  #       response_data = JSON.parse(response.body)
  #       expect(response_data["success"]).to be_truthy
  #       expect(response_data).to include("jwt")
  #       expect(response_data).to include("user")

  #       jwt_payload = JWT.decode(response_data["jwt"], nil, false).first
  #       expect(jwt_payload["user_id"]).to eq(@user.id)
  #     end
  #   end

  #   context "with invalid credentials" do
  #     let(:invalid_sign_in_params) do
  #       {
  #         email: "user2@example.com",
  #         password: "password123"
  #       }
  #     end

  #     it "returns an error response" do
  #       post "/sign_in", params: invalid_sign_in_params
  #       expect(response).to have_http_status(:unprocessable_entity)

  #       response_data = JSON.parse(response.body)
  #       expect(response_data["success"]).to be_falsy
  #       expect(response_data["errors"]).to include("Invalid username or password !")
  #     end
  #   end
  # end

end
