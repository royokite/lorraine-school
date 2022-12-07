class Instructor < ApplicationRecord
    has_many :schedules
    has_many :courses, through: :schedules
    has_many :students, through: :schedules

    validates :name, presence: true
    validates :password, length: { in: 6..20 }
    validates :email, uniqueness: true
end