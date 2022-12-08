class SubjectsController < ApplicationController
    
    def index
        render json: Subject.all, status: :ok
      end
  
      def show
        subject = find_subject
        render json: subject, status: :ok
      end
  
      def create
          subject = Subject.create!(subject_params)
          render json: subject, status: :created
      end
  
      def update
          subject = find_subject
          subject.update!(subject_params)
          render json: subject, status: :accepted
      end
  
      def destroy
          subject = find_subject
          subject.destroy
          head :no_content
      end
  
      private
  
      def find_subject
          Subject.find(params[:id])
      end
  
      def subject_params
          params.permit(:subject_name, :course_id)
      end

end
