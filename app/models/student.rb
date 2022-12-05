class Student < ApplicationRecord
    belongs_to :instructor
    has_many :subjects
end
