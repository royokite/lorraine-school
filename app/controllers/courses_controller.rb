class CoursesController < ApplicationController
    
    def index
        render json: Course.all, status: :ok
      end
  
      def show
        course = find_course
        render json: course, status: :ok
      end
  
      def create
          course = Course.create!(course_params)
          render json: course, status: :created
      end
  
      def update
          course = find_course
          course.update!(course_params)
          render json: course, status: :accepted
      end
  
      def destroy
          course = find_course
          course.destroy
          head :no_content
      end
  
      private
  
      def find_course
          Course.find(params[:id])
      end
  
      def course_params
          params.permit(:course_name, :school_year, :course_description)
      end

end
