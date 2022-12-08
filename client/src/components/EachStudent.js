import React from "react";
import { useParams, useNavigate } from "react-router-dom";

function EachStudent({ students, setStudents }) {
    const { id } = useParams();
    const navigate = useNavigate();
    const selectStudent = students.find((stu) => stu.id === Number(id));
    const { firstname, lastname, age, contact, gender, email } = selectStudent;  

    function handleDelete(id) {
        fetch(`/students/${id}`, {method: "DELETE"})
        
        // alert("This student will be deleted permanently! Proceed?")
        const updatedStudents = students.filter((stu) => stu.id !== id)
        setStudents(updatedStudents)
        navigate("/students")
    }

    function handleEdit(id) {
        console.log(id)
    }

    return (
        <article className="border border-indigo-500 bg-gray-800 p-2 grid justify-center w-1/2 mx-auto">
            <h2 className="text-indigo-400/100 text-5xl underline mb-4">{lastname} {firstname}</h2>
            <p className="mb-2">
                <span className="text-indigo-900/80">Gender: {gender}</span> <br />
                <span className="text-indigo-900/80">Age: {age}</span> <br />
                <span className="text-indigo-900/80">Email: {email}</span> <br />
                <span className="text-indigo-900/80">Contact: {contact}</span> <br />
            </p>
            <hr className="mb-4"/>
            <article>
                <button onClick={handleEdit}>Edit</button>
                <button onClick={() => handleDelete(id)}>Delete</button>
            </article>
        </article>
    );

}

export default EachStudent;