class Transaction < ApplicationRecord
    belongs_to :student

    validates :transaction_name, presence: true
    validates :transaction_date, presence: true   
end
