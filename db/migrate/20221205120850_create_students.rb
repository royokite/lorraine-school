class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :contact
      t.string :gender
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
