import React from 'react';

function StudentCard({ firstname, lastname, age, contact, gender, email }) {
    return (
        <article>
            <h2>{lastname} {firstname}</h2>
            <p>
                <span>Gender: {gender}</span> <br />
                <span>Age: {age}</span> <br />
                <span>Email: {email}</span> <br />
                <span>Contact: {contact}</span> <br />
            </p>
        </article>
    );

}

export default StudentCard;