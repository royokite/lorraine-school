class StudentsSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :age, :contact, :gender, :email
end
