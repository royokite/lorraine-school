class Student < ApplicationRecord
    has_many :transactions
    belongs_to :instructor
    has_one :course
    has_one :schedule
end
