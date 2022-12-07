import React from "react";
import { NavLink } from "react-router-dom";

function NavBar() {
    const imageStyle = {
        height: "8rem", 
        width: "10rem", 
        alignSelf: "center", 
        display: "block", 
        marginLeft: "auto", 
        marginRight: "auto", 
        marginBottom: "2rem",
        paddingTop: "1rem",
    }

    return (
        <nav>
            <article>
                <NavLink to="/">
                    <img src="./images/lorraine-logo.png" alt="school logo" style={imageStyle}/>
                </NavLink>
            </article>
            <article>
                <NavLink to="/">Dashboard</NavLink>
                <NavLink to="/instructors">Instructors</NavLink>
                <NavLink to="/students">Students</NavLink>
            </article>
        </nav>
    );

}

export default NavBar;