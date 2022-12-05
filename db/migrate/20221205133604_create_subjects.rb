class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.integer :sub_id
      t.string :sub_name
      t.integer :course_id
      t.timestamps
    end
  end
end
