class RemoveTransIdFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :trans_id, :integer
  end
end
