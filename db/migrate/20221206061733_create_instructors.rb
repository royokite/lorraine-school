class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
