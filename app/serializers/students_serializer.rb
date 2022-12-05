class StudentsSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :age, :gender, :email
  belongs_to :instructor
end
