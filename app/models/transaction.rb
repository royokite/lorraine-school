class Transaction < ApplicationRecord
    belongs_to :student

    validates :name, presence: true
    validates :date, presence: true
   
end
