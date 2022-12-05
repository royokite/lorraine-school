class DropCourses < ActiveRecord::Migration[7.0]
  def change
    drop_table :courses
  end
end
