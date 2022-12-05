class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :age,:gender, :email

  has_many :students
  has_one :schedule
end
