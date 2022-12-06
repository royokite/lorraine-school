class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :trans_id
      t.string :trans_name
      t.integer :stud_id
      t.date :trans_date
      t.timestamps
    end
  end
end
