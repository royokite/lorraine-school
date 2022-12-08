import React from "react";
import { useParams } from "react-router-dom";
import StudentCard from "./StudentCard";
import CourseCard from "./CourseCard";

function EachInstructor({ instructors }) {
    const { id } = useParams();
    const selectInstructor = instructors.find((inst) => inst.id === Number(id));
    const { firstname, lastname, gender, email, courses, students, subjects } = selectInstructor;  
    
    const instStudents = students.map((stu) => 
        <StudentCard 
            key={stu.id}
            id={stu.id}
            firstname={stu.firstname}
            lastname={stu.lastname}
            age={stu.age}
            contact={stu.contact}
            gender={stu.gender}
            email={stu.email}  
        />)
    
    const instCourses = courses.map((course) => 
        <CourseCard 
            key={course.id}
            courseName={course.course_name}
            schoolYear={course.school_year}
            description={course.course_description} 
        />)
    
    const instSubjects = subjects.map((sub) => <ul><li className="border border-indigo-500 bg-gray-800 p-2 text-indigo-400/100">{sub.subject_name}</li></ul>)

    return (
        <section>
            <article className="border border-indigo-500 bg-gray-800 pt-2 grid justify-center mt-0">
                <h2 className="text-indigo-400/100 text-3xl mb-2">{lastname} {firstname}</h2>
                <p className="mb-2">
                    <span className="text-indigo-900/80">Gender: {gender}</span> <br />
                    <span className="text-indigo-900/80">Email: {email}</span> <br />
                </p>
            </article>
            <h2 className="w-full font-bold text-slate-900/100 underline text-3xl grid justify-center">Subjects</h2>
            <article className="grid gap-6 grid-cols-4 m-4 text-center">
                {instSubjects}
            </article>
            <h2 className="w-full font-bold text-slate-900/100 underline text-3xl grid justify-center">Courses</h2>
            <article className="grid gap-6 grid-cols-4 m-4">
                {instCourses}
            </article>
            <h2 className="w-full font-bold text-slate-900/100 underline text-3xl grid justify-center">Students</h2>
            <article className="grid gap-6 grid-cols-4 m-4">
                {instStudents}
            </article>
        </section>
    );
}

export default EachInstructor;