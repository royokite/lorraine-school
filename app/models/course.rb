class Course < ApplicationRecord
    has_many :students
    has_many :Subjects
    has_many :schedules
end
