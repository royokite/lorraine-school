class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.time :time_start
      t.time :time_end
      t.timestamps
    end
  end
end
