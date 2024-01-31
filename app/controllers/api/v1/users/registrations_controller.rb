# frozen_string_literal: true
# module Api
#   module V1
#     class Users::RegistrationsController < Devise::RegistrationsController
#       respond_to :json
    
#     #   private
    
#     #   def respond_with(resource, _opts = {})
#     #     if request.method == "POST" && resource.persisted?
#     #       render json: {
#     #         status: { code: 200, message: "Signed up sucessfully." },
#     #         data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
#     #       }, status: :ok
#     #     elsif request.method == "DELETE"
#     #       render json: {
#     #         status: { code: 200, message: "Account deleted successfully."}
#     #       }, status: :ok
#     #     else
#     #       render json: {
#     #         status: {code: 422, message: "User couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"}
#     #       }, status: :unprocessable_entity
#     #     end
#     #   end

#     #   protected
#     #   def configure_permitted_parameters
#     #     devise_parameter_sanitizer.permit(:sign_up, keys: %i[name surname contact_number avatar])
#     #     devise_parameter_sanitizer.permit(:account_update, keys: %i[name surname contact_number avatar])
#     #   end
#     # end
#   end
# end

class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    user = User.new(sign_up_params)

    if user.save
      render json: { user: user, message: 'sign up success', is_success: true}, status: :ok
    else
      render json: { message: 'Sign up failed', is_success: false }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :surname, :contact_number, :email, :password, :password_confirmation)
  end
end


