class StudentController < ApplicationController

    def index
      @students = Student.all
      render json: @students
    end

    def show
      @student = Student.find(params[:id])
      render json: @student, status: :ok
    end

    def create
        new_student = Student.create(student_params)
        render json: new_student, status: :created
    end

    def update
      @student = Student.find(params[:id])
      @student.update(student_params)
      render json: @student, status: :ok
    end

    def destroy
      @student = Student.find(params[:id])
      @student.destroy
      render json: (message: "Student deleted successfully"), status: 200
    end

    private

    def student_params
        params.permit(:firstname, :lastname, :gender, :age, :contact, :email, :password)
    end
   
end
