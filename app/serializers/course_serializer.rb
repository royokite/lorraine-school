class CourseSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :school_year, :course_description

  # has_many :subjects
end
