class Student < ApplicationRecord
    has_many :schedules
    has_many :instructors, through: :schedules

    has_many :transactions

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 15, less_than_or_equal_to: 28}
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
end
