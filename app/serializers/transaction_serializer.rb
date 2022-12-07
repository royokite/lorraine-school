class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :transaction_name, :student_id, :transaction_date

  belongs_to :student
end
