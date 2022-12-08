class RenameSubIdToSubjectId < ActiveRecord::Migration[7.0]
  def change
    rename_column :schedules, :sub_id, :subject_id
  end
end
