import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom"
import InstructorCard from "../components/InstructorCard";

function Instructors() {
    const[instructors, setInstructors] = useState([]);
    const[search, setSearch] = useState("");

    useEffect(() => {
        fetch("/teachers")
        .then((response) => response.json())
        .then(setInstructors)
    }, []);

    const searchedItems = instructors.filter((inst) => (inst.firstname + " " + inst.lastname).toLowerCase().includes(search))
    const renderInstructors = searchedItems.map((inst) => 
    <InstructorCard 
        key={inst.id}
        firstname={inst.firstname}
        lastname={inst.lastname}
        gender={inst.gender}
        email={inst.email}
    />)

    return (
        <>
            {instructors.length > 0 ? (
                <section>
                    <input
                        id="search-bar" 
                        type="text"
                        value={search}
                        onChange={(e) => setSearch(e.target.value)}
                        placeholder="Search..."
                    /> <br />
                    <article>
                        {renderInstructors}
                    </article>         
                </section>
            ) : (
                <section>
                    <h2>No Instructors Found!</h2>
                    <button as={Link} to="/instructors/new">Add New Instructor</button>
                </section>
            )}
        </>
    );
}

export default Instructors;
