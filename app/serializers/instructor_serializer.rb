class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :gender, :age, :contact, :email, :password

  has_many :schedules
  has_many :courses
  has_many :students
end
