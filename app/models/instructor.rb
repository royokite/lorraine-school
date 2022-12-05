class Instructor < ApplicationRecord
    has_one :schedule
    has_many :students
end
