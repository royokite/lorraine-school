class Student < ApplicationRecord
    has_many :schedules
    has_many :instructors, through: :schedules

    validates :age, numericality: {greater_than_or_equal_to: 18}
    validates :name, presence: true
    validates :password, length: { in: 6..20 }
    validates :email, uniqueness: true
end
