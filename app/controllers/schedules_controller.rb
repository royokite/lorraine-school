class SchedulesController < ApplicationController

    def index
      render json: Schedule.all, status: :ok
    end

    def show
      schedule = find_schedule
      render json: schedule, status: :ok
    end

    def create
        schedule = Schedule.create!(schedule_params)
        render json: schedule, status: :created
    end

    def update
        schedule = find_schedule
        Schedule.update!(schedule_params)
        render json: schedule, status: :accepted
    end

    def destroy
        schedule = find_schedule
        Schedule.destroy
        head :no_content
    end

    private

    def find_schedule
        Schedule.find(params[:id])
    end

    def Schedule_params
        params.permit(:course_id, :instructor_id, :subject_id, :student_id, :day, :time_start, :time_end)
    end

end
