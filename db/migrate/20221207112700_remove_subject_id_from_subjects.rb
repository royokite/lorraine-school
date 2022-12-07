class RemoveSubjectIdFromSubjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :subjects, :subject_id
  end
end
