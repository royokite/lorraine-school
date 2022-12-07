class Course < ApplicationRecord
    has_many :subjects
    has_many :schedules

    validates :name, presence: true
end
