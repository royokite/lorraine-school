class StudentsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        students = Student.all
        render json: students
    end

    def show
        @student = Student.find(params[:id])
        render json: @student.to_json(only: [:firstname, :lastname, :id], include: [:instructors])
    end

    def create
        @student = Student.create!(student_params)
        if @student.save
        render json: @student, status: :created
        else
            render :action => "new"
        end
    end

    def update
        student = Student.find_by(params[:id])
        student.update!(student_params)
        render json: student, status: :accepted
    endz

    def destroy
        student = Student.find(params[:id])
        student.destroy
        render json: {message: "Student successfully deleted"}, status: :ok
    end

    private

    def student_params
        params.permit(:firstname, :lastname, :age, :contact, :gender, :email, :password)
    end

    def record_not_found
        render json: {message: "Student does not exist!"}, status: 404
    end

end
