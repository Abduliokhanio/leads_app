class ApplicationController < ActionController::Base
    before_action :authenticate_owner!

    def after_sign_in_path_for(resource)
        session["user_id"] = Owner.where(email: params["owner"]["email"].downcase)[0].id
        leads_path
    end
end
