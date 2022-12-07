import React from "react";

function CourseCard({ courseName, schoolYear, description }) {
    return (
        <article>
            <h2>{courseName}</h2>
            <p>
                <span>School Year: {schoolYear}</span> <br />
                <span>Description: {description}</span> <br />
            </p>
        </article>
    );
}

export default CourseCard;