class DropInstructors < ActiveRecord::Migration[7.0]
  def change
    drop_table :instructors
  end
end
