class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :gender, :email, :password

  has_many :schedules
  has_many :courses
  has_many :students
  has_many :subjects
end
