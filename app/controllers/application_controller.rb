class ApplicationController < ActionController::Base
    before_action :authenticate_owner!, :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        session["user_id"] = Owner.where(email: params["owner"]["email"].downcase)[0].id
        leads_path
    end

    def configure_permitted_parameters
        # Permit the `subscribe_newsletter` parameter along with the other
        # sign up parameters.
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      end


end
