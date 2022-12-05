class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :course_name
      t.string :school_yr
      t.string :course_desc

      t.timestamps
    end
  end
end