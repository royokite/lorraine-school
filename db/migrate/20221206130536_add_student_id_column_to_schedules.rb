class AddStudentIdColumnToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :schedules, :student_id, :integer
  end
end
