import React from "react";

function CourseCard({ courseName, schoolYear, description }) {
    return (
        <article className="border border-indigo-500 bg-gray-800 p-2 grid justify-center">
            <h2 className="text-indigo-400/100 text-2xl underline">{courseName}</h2>
            <p className="mb-2">
                <span className="text-indigo-900/80">School Year: {schoolYear}</span> <br />
                <span className="text-indigo-900/80">Description: {description}</span> <br />
            </p>
        </article>
    );
}

export default CourseCard;