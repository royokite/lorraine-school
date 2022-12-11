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
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu1@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu2@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu3@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu4@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu5@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu6@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu7@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu8@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu9@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu10@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu11@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu12@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu13@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu14@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
        gender: Faker::Gender.binary_type, 
        email: "stu15@lorraine.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10)  
    },
    {
        firstname: Faker::Name.first_name ,
        lastname: Faker::Name.last_name,
        age: rand(15...28),
        contact: Faker::Number.number(digits: 8),
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

sched1 = Schedule.create(
    course_id: 1,
    instructor_id: 1,
    subject_id: 1,
    student_id: 1,
    day: Faker::Date.forward(days: 30)
)

sched2 = Schedule.create(
    course_id: 2,
    instructor_id: 2,
    subject_id: 2,
    student_id: 2,
    day: Faker::Date.forward(days: 30)
)

sched3 = Schedule.create(
    course_id: 3,
    instructor_id: 3,
    subject_id: 3,
    student_id: 3,
    day: Faker::Date.forward(days: 30)
)

sched4 = Schedule.create(
    course_id: 4,
    instructor_id: 4,
    subject_id: 4,
    student_id: 4,
    day: Faker::Date.forward(days: 30)
)

sched5 = Schedule.create(
    course_id: 5,
    instructor_id: 5,
    subject_id: 5,
    student_id: 5,
    day: Faker::Date.forward(days: 30)
)

sched6 = Schedule.create(
    course_id: 6,
    instructor_id: 6,
    subject_id: 6,
    student_id: 6,
    day: Faker::Date.forward(days: 30)
)

sched7 = Schedule.create(
    course_id: 7,
    instructor_id: 7,
    subject_id: 7,
    student_id: 7,
    day: Faker::Date.forward(days: 30)
)

sched8 = Schedule.create(
    course_id: 8,
    instructor_id: 8,
    subject_id: 8,
    student_id: 8,
    day: Faker::Date.forward(days: 30)
)

sched9 = Schedule.create(
    course_id: 8,
    instructor_id: 9,
    subject_id: 9,
    student_id: 9,
    day: Faker::Date.forward(days: 30)
)

sched10 = Schedule.create(
    course_id: 7,
    instructor_id: 10,
    subject_id: 10,
    student_id: 10,
    day: Faker::Date.forward(days: 30)
)

sched11 = Schedule.create(
    course_id: 6,
    instructor_id: 11,
    subject_id: 11,
    student_id: 11,
    day: Faker::Date.forward(days: 30)
)

sched12 = Schedule.create(
    course_id: 5,
    instructor_id: 12,
    subject_id: 12,
    student_id: 12,
    day: Faker::Date.forward(days: 30)
)

sched13 = Schedule.create(
    course_id: 4,
    instructor_id: 1,
    subject_id: 13,
    student_id: 13,
    day: Faker::Date.forward(days: 30)
)

sched14 = Schedule.create(
    course_id: 3,
    instructor_id: 2,
    subject_id: 14,
    student_id: 14,
    day: Faker::Date.forward(days: 30)
)

sched15 = Schedule.create(
    course_id: 2,
    instructor_id: 3,
    subject_id: 15,
    student_id: 15,
    day: Faker::Date.forward(days: 30)
)

sched16 = Schedule.create(
    course_id: 1,
    instructor_id: 4,
    subject_id: 16,
    student_id: 16,
    day: Faker::Date.forward(days: 30)
)

sched17 = Schedule.create(
    course_id: 1,
    instructor_id: 5,
    subject_id: 1,
    student_id: 1,
    day: Faker::Date.forward(days: 30)
)

sched18 = Schedule.create(
    course_id: 2,
    instructor_id: 6,
    subject_id: 2,
    student_id: 2,
    day: Faker::Date.forward(days: 30)
)

sched19 = Schedule.create(
    course_id: 3,
    instructor_id: 7,
    subject_id: 3,
    student_id: 3,
    day: Faker::Date.forward(days: 30)
)

sched20 = Schedule.create(
    course_id: 4,
    instructor_id: 8,
    subject_id: 4,
    student_id: 4,
    day: Faker::Date.forward(days: 30)
)

sched21 = Schedule.create(
    course_id: 5,
    instructor_id: 9,
    subject_id: 5,
    student_id: 5,
    day: Faker::Date.forward(days: 30)
)

sched22 = Schedule.create(
    course_id: 6,
    instructor_id: 10,
    subject_id: 6,
    student_id: 6,
    day: Faker::Date.forward(days: 30)
)

sched23 = Schedule.create(
    course_id: 7,
    instructor_id: 11,
    subject_id: 7,
    student_id: 7,
    day: Faker::Date.forward(days: 30)
)

sched24 = Schedule.create(
    course_id: 8,
    instructor_id: 12,
    subject_id: 8,
    student_id: 8,
    day: Faker::Date.forward(days: 30)
)

sched25 = Schedule.create(
    course_id: 1,
    instructor_id: 1,
    subject_id: 9,
    student_id: 9,
    day: Faker::Date.forward(days: 30)
)

sched26 = Schedule.create(
    course_id: 2,
    instructor_id: 2,
    subject_id: 10,
    student_id: 10,
    day: Faker::Date.forward(days: 30)
)

sched27 = Schedule.create(
    course_id: 3,
    instructor_id: 3,
    subject_id: 11,
    student_id: 11,
    day: Faker::Date.forward(days: 30)
)

sched28 = Schedule.create(
    course_id: 4,
    instructor_id: 4,
    subject_id: 12,
    student_id: 12,
    day: Faker::Date.forward(days: 30)
)

sched29 = Schedule.create(
    course_id: 5,
    instructor_id: 5,
    subject_id: 13,
    student_id: 13,
    day: Faker::Date.forward(days: 30)
)

sched30 = Schedule.create(
    course_id: 6,
    instructor_id: 6,
    subject_id: 14,
    student_id: 14,
    day: Faker::Date.forward(days: 30)
)

sched31 = Schedule.create(
    course_id: 7,
    instructor_id: 7,
    subject_id: 15,
    student_id: 15,
    day: Faker::Date.forward(days: 30)
)

sched32 = Schedule.create(
    course_id: 8,
    instructor_id: 8,
    subject_id: 16,
    student_id: 16,
    day: Faker::Date.forward(days: 30)
)

puts "✅ Done seeding!"