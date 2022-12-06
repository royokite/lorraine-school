import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import StudentCard from "../components/StudentCard";

function Students() {
    const[students, setStudents] = useState([]);
    const[search, setSearch] = useState("");

    useEffect(() => {
        fetch("/students")
        .then((response) => response.json())
        .then(setStudents)
    }, []);

    const searchedItems = students.filter((stu) => (stu.firstname + " " + stu.lastname).toLowerCase().includes(search));
    const renderStudents = searchedItems.map((stu) => {
        <StudentCard
            key={stu.id}
            firstname={stu.firstname}
            lastname={stu.lastname}
            age={stu.age}
            contact={stu.contact}
            gender={stu.gender}
            email={stu.email}        
        />
    })

    return (
        <>
            {students.length > 0 ? (
                <section>
                    <input
                        id="search-bar"
                        type="text"
                        value={search}
                        onChange={(e) => setSearch(e.target.value)} 
                        placeholder="Search..."
                    />
                    <article>
                        {renderStudents}
                    </article>
                </section>
            ) : (
                <section>
                    <h2>No Students Found!</h2>
                    <button as={Link} to="/students/new"></button>
                </section>
            )};
        </>
    );
}

export default Students;