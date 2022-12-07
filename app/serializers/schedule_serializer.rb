class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :course_id, :instructor_id, :subject_id, :student_id, :day, :time_start, :time_end
end
