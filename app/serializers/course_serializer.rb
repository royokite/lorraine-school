class CourseSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :school_yr, :course_desc
end
# t.integer :course_id
# t.string :course_name
# t.integer :school_yr
# t.string :course_desc