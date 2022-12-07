class Subject < ApplicationRecord
    belongs_to :course
    has_many :schedules
    has_many :students, through: :schedules
    has_many :instructors, through: :schedules

    validates :subject_name, presence: true, uniqueness: true
end
