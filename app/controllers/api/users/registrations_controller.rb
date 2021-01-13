module Api
  module Users
    class RegistrationsController < Devise::RegistrationsController
      skip_before_action :verify_authenticity_token
      include Response
      include CustomException
      handle_api_errors

      def create
        build_resource(sign_up_params)
        resource.save
        if resource.persisted?
          expire_data_after_sign_in! unless resource.active_for_authentication?
          json_response({ user: resource, message: 'Signup Successfully' }, 200)
        else
          raise_error('Validation failed', resource.errors.to_hash, 422)
        end
      end
    end
  end
end
