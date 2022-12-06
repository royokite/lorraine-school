class InstruictorsSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :gender, :age, :contact, :email, :password
end
