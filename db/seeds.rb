# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
puts "🌱 Seeding..."

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
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst5@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst6@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst7@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst8@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst9@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst10@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst11@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        gender: Faker::Gender.binary_type, 
        email: "inst12@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    },
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
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu5@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu6@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu7@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu8@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu9@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu10@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu11@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu12@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu13@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu14@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu15@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::PhoneNumber.cell_phone_in_e164,
        gender: Faker::Gender.binary_type, 
        email: "stu16@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
])

Course.create([
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    },
    {
        course_name: Faker::Educator.course_name,
        school_year: rand(1...4),
        course_description: Faker::Marketing.buzzwords,
    }
])

Subject.create([
    {
        subject_name: Faker::Educator.subject,
        course_id: 3,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 1,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 5,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 2,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 4,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 6,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 7,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 8,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 8,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 1,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 6,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 5,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 1,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 3,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 7,
    },
    {
        subject_name: Faker::Educator.subject,
        course_id: 2,
    },
])

30.times do 
    Transaction.create(
        transaction_name: Faker::Bank.name,
        student_id: rand(1...16),
        transaction_date: Faker::Date.backward(days: 90)
)
end

30.times do
    Schedule.create(
        course_id:rand(1...8),
        instructor_id: rand(1...12),
        subject_id: rand(1...16),
        student_id: rand(1...16),
        day: Faker::Date.forward(days: 30)
    )
end

puts "✅ Done seeding!"