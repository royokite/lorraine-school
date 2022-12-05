class InstructorsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_exception
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_exception
      def index
        render json: Instructor.all
      end
    
      def show
        render json: find_instructor
      end
    
      def create
        new_instructor = Instructor.create!(instructor_params)
        render json: new_instructor, status: :created
      end
    
      def update
        find_instructor.update(instructor_params)
        if updated
          render json: find_instructor, status: :ok
        else
          render json: {error: "Invalid parameters given" }, status: :forbidden
        end
      end
    
      def destroy
        find_instructor.destroy
        render json: {}, status: :ok
      end
    
      private
    
      def find_instructor
        Instructor.find(params[:id])
      end
    
      def instructor_params
        params.permit(:firstname, :lastname, :age, :ins_id, :gender, :ins_email)
      end
    
      def record_not_found_exception
        render json: { error: "Instructor not found" }, status: :not_found
      end
    
      def unprocessable_entity_exception(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
      end
    end