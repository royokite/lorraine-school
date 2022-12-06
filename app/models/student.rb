class Student < ApplicationRecord
    has_many :schedules
    has_many :instructors, through: :schedules
end
