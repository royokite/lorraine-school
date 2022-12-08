import React, { useState } from "react";
import { useParams, useNavigate } from "react-router-dom";
import NewStudentForm from "./NewStudentForm";

function EachStudent({ students, setStudents }) {
    const { id } = useParams();
    const navigate = useNavigate();
    const selectStudent = students.find((stu) => stu.id === Number(id));
    const { firstname, lastname, age, contact, gender, email, transactions } = selectStudent;  

    const allTransactions = transactions.map((t) => <li key={t.id}>{t.transaction_name} : {t.transaction_date}</li>)
    
    const [showForm, setShowForm] = useState(false)

    function handleDelete(id) {
        fetch(`/students/${id}`, {method: "DELETE"})
        .then(() => {
            const updatedStudents = students.filter((stu) => stu.id !== id)
            setStudents(() => updatedStudents)
        })
        
        // alert("This student will be deleted permanently! Proceed?")        
        navigate("/students")
    }

    function handleEdit(id) {
        setShowForm(true)
        console.log(students.find((stu) => stu.id === Number(id)))
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
            <h3 className="text-indigo-400/100 text-xl mb-2">Fee Transactions</h3>
            {allTransactions}
            <hr className="my-4"/>
            <article>
                <button onClick={() => handleEdit(id)}>Edit</button>
                <button onClick={() => handleDelete(id)}>Delete</button>
            </article>
            {showForm ? <NewStudentForm />: ""}
        </article>
    );

}

export default EachStudent;