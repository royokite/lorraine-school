class Course < ApplicationRecord
    belongs_to :student
    belongs_to :schedule
    has_many :subjects
end
