import React, { useState } from "react";
import InstructorCard from "../components/InstructorCard";

function Instructors({ instructors }) {
    const[search, setSearch] = useState("");

    const searchedItems = instructors.filter((inst) => inst.lastname.toLowerCase().includes(search) || inst.firstname.toLowerCase().includes(search))
    const renderInstructors = searchedItems.map((inst) => 
    <InstructorCard 
        key={inst.id}
        id={inst.id}
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
                    <article className="grid gap-5 grid-cols-4 m-4">
                        {renderInstructors}
                    </article>         
                </section>
            ) : (
                <section>
                    <h2 className="text-indigo-900/100 text-5xl underline m-2 font-bold">No Instructors Found!</h2>
                </section>
            )}
        </>
    );
}

export default Instructors;
