class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.boolean :gender
      t.integer :grade
      t.string :ins_email
      t.timestamps
    end
  end
end
