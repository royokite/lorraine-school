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
                <article>
                    {renderCourses}
                </article>         
            </section>
        </>
    );
}

export default Courses;