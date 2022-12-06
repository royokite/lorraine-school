# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "🌱 Seeding spices..."

Student.destroy_all
Course.destroy_all
# Review.destroy_all
# Order.destroy_all
# OrderDetail.destroy_all

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
        firstname: Faker::Name.first_name,
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

Course.create([
    {
        course_name: "c++ programming",
        course_yr: 2,
        course_desc: "basic of c++ programming",
    },
    {
        course_name: "data structures",
        course_yr: 3,
        course_desc: "understanding data structures",
    },
    {
        course_name: "python programming",
        course_yr: 3,
        course_desc: "data mining using python programming",
    },
    {
        course_name: "Introduction to programming",
        course_yr: 1,
        course_desc: "basics of computer programming",
    }
])

puts "✅ Done seeding!"