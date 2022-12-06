class Student < ApplicationRecord
    has_many :schedules
    has_many :instructors, through: :schedules

    validates :name, presence: true
    validates :password, length: { in: 6..20 }
    validates :email, uniqueness: true
end
