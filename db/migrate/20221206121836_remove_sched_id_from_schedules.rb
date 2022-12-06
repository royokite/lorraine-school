class RemoveSchedIdFromSchedules < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedules, :sched_id, :integer
  end
end
