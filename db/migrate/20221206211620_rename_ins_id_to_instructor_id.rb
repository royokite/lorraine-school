class RenameInsIdToInstructorId < ActiveRecord::Migration[7.0]
  def change
    rename_column :schedules, :ins_id, :instructor_id
  end
end
