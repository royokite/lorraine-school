class RenameTransNameAndStudIdInTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :stud_id, :student_id
    rename_column :transactions, :trans_name, :transaction_name
  end
end
