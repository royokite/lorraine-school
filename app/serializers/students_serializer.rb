class StudentsSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :age, :gender, :email, :grade
  belongs_to :instructor
end
