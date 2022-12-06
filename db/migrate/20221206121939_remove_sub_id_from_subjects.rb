class RemoveSubIdFromSubjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :subjects, :sub_id, :integer
  end
end
