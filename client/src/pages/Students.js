import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import StudentCard from "../components/StudentCard";

function Students({ students, setStudents }) {    
    const[search, setSearch] = useState("");

    const navigate = useNavigate();

    // useEffect(() => {
    //     fetch("/students")
    //     .then((response) => response.json())
    //     .then(setStudents)
    // }, []);

    const searchedItems = students.filter((stu) => stu.lastname.toLowerCase().includes(search));
    const renderStudents = searchedItems.map((stu) => 
        <StudentCard
            key={stu.id}
            id={stu.id}
            firstname={stu.firstname}
            lastname={stu.lastname}
            age={stu.age}
            contact={stu.contact}
            gender={stu.gender}
            email={stu.email}        
        />
    )    

    return (
        <>
            {students.length > 0 ? (
                <section>
                    <>
                        <input
                            id="search-bar"
                            type="text"
                            value={search}
                            onChange={(e) => setSearch(e.target.value)} 
                            placeholder="Search..."
                        /> 
                        <button onClick={() => navigate("/students/new")}>Add New Student</button>
                    </>
                    <br />
                    <article className="grid gap-5 grid-cols-4 m-4">
                        {renderStudents}
                    </article>
                </section>
            ) : (
                <section>
                    <h2 className="text-indigo-900/100 text-5xl underline m-2 font-bold">No Students Found!</h2>
                    <button as={Link} to="/students/new"></button>
                </section>
            )}
        </>
    );
}

export default Students;
