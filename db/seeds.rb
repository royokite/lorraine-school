# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
puts "🌱 Seeding..."

# Course.create([
#     {
#         course_name: "c++ programming",
#         course_yr: 2,
#         course_desc: "basic of c++ programming",
#     },
#     {
#         course_name: "data structures",
#         course_yr: 3,
#         course_desc: "understanding data structures",
#     },
#     {
#         course_name: "python programming",
#         course_yr: 3,
#         course_desc: "data mining using python programming",
#     },
#     {
#         course_name: "Introduction to programming",
#         course_yr: 1,
#         course_desc: "basics of computer programming",
#     }
# ])

# inst1 = Instructor.create(
#             firstname: Faker::Name.first_name,
#             lastname: Faker::Name.last_name,
#             gender: Faker::Gender.binary_type, 
#             email: "inst1@lorraine.com",
#             password: Faker::Alphanumeric.alphanumeric(number: 10) 
# )

# inst2 = Instructor.create(
#             firstname: Faker::Name.first_name,
#             lastname: Faker::Name.last_name,
#             gender: Faker::Gender.binary_type, 
#             email: "inst2@lorraine.com",
#             password: Faker::Alphanumeric.alphanumeric(number: 10) 
# )

Instructor.create([
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst1@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst2@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst3@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst4@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    }
]) 

Student.create([
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu1@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu2@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu3@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu4@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
])

puts "✅ Done seeding!"