class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :stud_id
      t.string :first_name
      t.string :last_name
      t.string :age
      t.boolean :gender
      t.integer :grade
      t.string :stud_email
      t.integer :ins_id
      t.timestamps
    end
  end
end
