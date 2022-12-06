class StudentSerializer < ActiveModel::Serializer
  attributes :id

  has_many :instructors
end
