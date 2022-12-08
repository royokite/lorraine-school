import React from 'react';
import { useNavigate } from "react-router-dom"

function StudentCard({ id, firstname, lastname, age, contact, gender, email }) {
    const navigate = useNavigate()

    return (
        <article className="border border-indigo-500 bg-gray-800 p-2 grid justify-center">
            <h2 className="text-indigo-400/100 text-2xl">{lastname} {firstname}</h2>
            <p className="mb-2">
                <span className="text-indigo-900/80">Gender: {gender}</span> <br />
                <span className="text-indigo-900/80">Age: {age}</span> <br />
                <span className="text-indigo-900/80">Email: {email}</span> <br />
                <span className="text-indigo-900/80">Contact: {contact}</span> <br />
            </p>
            <hr />
            <button onClick={() => navigate(`/students/${id}`)} className="mt-2">Details</button>
        </article>
    );

}

export default StudentCard;