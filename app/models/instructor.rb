class Instructor < ApplicationRecord
    has_many :schedules
    has_many :courses, through: :schedules
    has_many :students, through: :schedules
    has_many :subjects, through: :schedules

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
end