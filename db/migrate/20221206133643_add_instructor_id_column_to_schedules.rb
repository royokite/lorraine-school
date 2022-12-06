class AddInstructorIdColumnToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :schedules, :instructor_id, :integer
  end
end
