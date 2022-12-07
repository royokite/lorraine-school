import React from "react";
import { useNavigate, useParams } from "react-router-dom";

function EachInstructor({ instructors }) {
    const navigate = useNavigate();
    const { id } = useParams();
    const selectInstructor = instructors.find((inst) => inst.id === Number(id));
    const { firstname, lastname, gender, email } = selectInstructor

    return (
        <article className="border border-indigo-500 bg-gray-800 p-2 grid justify-center">
            <h2 className="text-indigo-400/100 text-2xl">{lastname} {firstname}</h2>
            <p className="mb-2">
                <span className="text-indigo-900/80">Gender: {gender}</span> <br />
                <span className="text-indigo-900/80">Email: {email}</span> <br />
            </p>
            <hr />
        </article>
    );
}

export default EachInstructor;