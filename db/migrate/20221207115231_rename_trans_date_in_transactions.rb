class RenameTransDateInTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :trans_date, :transaction_date
  end
end
