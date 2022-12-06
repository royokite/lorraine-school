class CourseSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :school_yr, :course_desc
end