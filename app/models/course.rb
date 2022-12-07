class Course < ApplicationRecord
    has_many :subjects
    has_many :schedules

    validates :course_name, presence: true
end
