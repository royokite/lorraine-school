class RenameCourseYrAndCourseDescInCourses < ActiveRecord::Migration[7.0]
  def change
    rename_column :courses, :course_yr, :school_year
    rename_column :courses, :course_desc, :course_description
  end
end
