# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Student.create([
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: 20,
        contact: 701234545,
        gender: Faker::Gender.binary_type, 
        email: Faker::Address.street_name,
        password: 23406979 
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: 20,
        contact: 701234545,
        gender: Faker::Gender.binary_type, 
        email: Faker::Address.street_name,
        password: 23406979 
    },
    {
        first_name: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        age: 20,
        contact: 701234545,
        gender: Faker::Gender.binary_type, 
        email: Faker::Address.street_name,
        password: 23406979 
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: 20,
        contact: 701234545,
        gender: Faker::Gender.binary_type, 
        email: Faker::Address.street_name,
        password: 23406979 
    },
])
