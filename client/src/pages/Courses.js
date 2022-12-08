import React, { useState, useEffect } from "react";
import CourseCard from "../components/CourseCard";

function Courses() {
    const [courses, setCourses] = useState([])

    useEffect(() => {
        fetch("/courses")
        .then((response) => response.json())
        .then(setCourses)
    }, [])

    const renderCourses = courses.map((course) => 
        <CourseCard 
            key={course.id}
            courseName={course.course_name}
            schoolYear={course.school_year}
            description={course.course_description}        
        />)

    return (
        <>
            <section>
                <h2 className="text-slate-900/100 text-5xl underline m-2 font-bold text-center bg-gray-800 p-2">Courses Offered</h2>
                <article className="grid gap-5 grid-cols-4 m-4">
                    {renderCourses}
                </article>         
            </section>
        </>
    );
}

export default Courses;