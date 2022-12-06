class InstructorsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
      instructors = Instructor.all
      render json: instructors
    end

    def show
      @instructor = Instructor.find(params[:id])
      render json: @instructor
    end

    def create
        @instructor = Instructor.create!(instructor_params)
        if @instructor.save
            render json: @instructor, status: :created
        else
            render :action => "new"
        end
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
        render json: @instructor, status: :accepted
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        render json: {message: "Deleted successfully"}, status: :ok
    end

    private

    def instructor_params
        params.permit(:firstname, :lastname, :gender, :age, :contact, :email, :password)
    end

    def record_not_found
        render json: {message: "Instructor does not exist!"}
    end

end
