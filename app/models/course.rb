class Course < ApplicationRecord
    has_many :Subjects
    has_many :schedules

    validates :name, presence: true
end
