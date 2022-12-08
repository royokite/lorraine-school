class StudentSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :gender, :age, :contact, :email, :password

  has_many :instructors
  has_many :transactions
end
