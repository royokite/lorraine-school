class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.integer :subject_id
      t.string :subject_name
      t.integer :course_id
      t.timestamps
    end
  end
end
