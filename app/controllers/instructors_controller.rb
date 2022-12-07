class InstructorsController < ApplicationController

    def index
      render json: Instructor.all, status: :ok
    end

    def show
      instructor = find_instructor
      render json: instructor, status: :ok
    end

    def create
        instructor = Instructor.create!(instructor_params)
        render json: instructor, status: :created
    end

    def update
        instructor = find_instructor
        instructor.update!(instructor_params)
        render json: instructor, status: :accepted
    end

    def destroy
        instructor = find_instructor
        instructor.destroy
        head :no_content
    end

    private

    def find_instructor
        Instructor.find(params[:id])
    end

    def instructor_params
        params.permit(:firstname, :lastname, :gender, :age, :contact, :email, :password)
    end

end
