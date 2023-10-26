require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /users" do
    context "with valid parameters" do
      let(:valid_user_params) do
        {
          user: {
            first_name: "John",
            last_name: "Doe",
            user_name: "johndoe",
            email: "johndoe@example.com",
            password: "password123",
            date_of_birth: "1990-01-01",
            user_type: "developer"
          }
        }
      end

      it "creates a new user" do
        post "/users", params: valid_user_params
        expect(response).to have_http_status(201)
      end

      it "returns a success message" do
        post "/users", params: valid_user_params
        result = JSON.parse(response.body)
        expect(result).to be_truthy
      end
    end

    context "with invalid parameters" do
      let(:invalid_user_params) do
        {
          user: {
            first_name: nil,
            last_name: "Doe",
            user_name: "johndoe",
            email: "johndoe@example.com",
            password: "password123",
            date_of_birth: "1990-01-01",
            user_type: "developer"
          }
        }
      end

      it "does not create a new user" do
        post "/users", params: invalid_user_params
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "returns validation errors" do
        post "/users", params: invalid_user_params
        result = JSON.parse(response.body)
        expect(result).to have_key("error")
      end
    end
  end
end
