class Instructor < ApplicationRecord
    has_many :schedules
    has_many :courses, through: :schedules
    has_many :students, through: :schedules
end