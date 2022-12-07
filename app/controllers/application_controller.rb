class ApplicationController < ActionController::API
    wrap_parameters format: []
    
    include ActionController::Cookies

    # before_action :authorize
    
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def record_not_found
        render json: { error: "This record does not exist!" }, status: :not_found
    end

    def record_invalid(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    # def authorize
    #     return render json: { errors: "Unauthorized Access!" }, status: :unauthorized unless session.include? :user_id
    # end
end
