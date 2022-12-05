class Student < ApplicationRecord
    has_many :transactions
    has_one :course
    has_one :schedule
end
