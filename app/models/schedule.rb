class Schedule < ApplicationRecord
    belongs_to :student
    has_many :subjects
    belongs_to :instructor
end
