class RenameStudIdToStudentId < ActiveRecord::Migration[7.0]
  def change
    rename_column :schedules, :stud_id, :student_id
  end
end
