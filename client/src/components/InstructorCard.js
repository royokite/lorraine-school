import React from "react";

function InstructorCard({ firstname, lastname, gender, email }) {
    return (
        <article>
            <h2>{lastname} {firstname}</h2>
            <p>
                <span>Gender: {gender}</span> <br />
                <span>Email: {email}</span> <br />
            </p>
        </article>
    );
}

export default InstructorCard;