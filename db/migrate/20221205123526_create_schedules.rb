class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :sched_id
      t.integer :course_id
      t.integer :ins_id
      t.integer :sub_id
      t.integer :stud_id
      t.string :day
      t.time :time_start
      t.time :time_end
      t.timestamps
    end
  end
end
